/*
 *  Copyright 2019-2020 Zheng Jie
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package me.zhengjie.modules.mnt.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.hutool.core.date.DatePattern;
import cn.hutool.core.date.DateUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.mnt.domain.App;
import me.zhengjie.modules.mnt.domain.Deploy;
import me.zhengjie.modules.mnt.domain.DeployHistory;
import me.zhengjie.modules.mnt.domain.ServerDeploy;
import me.zhengjie.modules.mnt.repository.DeployRepository;
import me.zhengjie.modules.mnt.service.DeployHistoryService;
import me.zhengjie.modules.mnt.service.DeployService;
import me.zhengjie.modules.mnt.service.ServerDeployService;
import me.zhengjie.modules.mnt.service.dto.AppDto;
import me.zhengjie.modules.mnt.service.dto.DeployDto;
import me.zhengjie.modules.mnt.service.dto.DeployQueryCriteria;
import me.zhengjie.modules.mnt.service.dto.ServerDeployDto;
import me.zhengjie.modules.mnt.service.mapstruct.DeployMapper;
import me.zhengjie.modules.mnt.util.ExecuteShellUtil;
import me.zhengjie.modules.mnt.util.ScpClientUtil;
import me.zhengjie.modules.mnt.websocket.MsgType;
import me.zhengjie.modules.mnt.websocket.SocketMsg;
import me.zhengjie.modules.mnt.websocket.WebSocketServer;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.ValidationUtil;

/**
 * @author zhanghouying
 * @date 2019-08-24
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class DeployServiceImpl implements DeployService {

	private final String FILE_SEPARATOR = "/";
	private final DeployRepository deployRepository;
	private final DeployMapper deployMapper;
	private final ServerDeployService serverDeployService;
	private final DeployHistoryService deployHistoryService;
	/**
	 * 循環次數
	 */
	private final Integer count = 30;


	@Override
	public Object queryAll(DeployQueryCriteria criteria, Pageable pageable) {
		Page<Deploy> page = deployRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicateByUser(root, criteria, criteriaBuilder), pageable);
		return PageUtil.toPage(page.map(deployMapper::toDto));
	}

	@Override
	public List<DeployDto> queryAll(DeployQueryCriteria criteria) {
		return deployMapper.toDto(deployRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicateByUser(root, criteria, criteriaBuilder)));
	}

	@Override
	public DeployDto findById(Long id) {
		Deploy deploy = deployRepository.findById(id).orElseGet(Deploy::new);
		ValidationUtil.isNull(deploy.getId(), "Deploy", "id", id);
		return deployMapper.toDto(deploy);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void create(Deploy resources) {
		deployRepository.save(resources);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void update(Deploy resources) {
		Deploy deploy = deployRepository.findById(resources.getId()).orElseGet(Deploy::new);
		ValidationUtil.isNull(deploy.getId(), "Deploy", "id", resources.getId());
		deploy.copy(resources);
		deployRepository.save(deploy);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void delete(Set<Long> ids) {
		for (Long id : ids) {
			deployRepository.deleteById(id);
		}
	}

	@Override
	public void deploy(String fileSavePath, Long id) {
		deployApp(fileSavePath, id);
	}

	/**
	 * @param fileSavePath 本機路徑
	 * @param id ID
	 */
	private void deployApp(String fileSavePath, Long id) {

		DeployDto deploy = findById(id);
		if (deploy == null) {
			sendMsg("部署資訊不存在", MsgType.ERROR);
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "部署資訊不存在");
		}
		AppDto app = deploy.getApp();
		if (app == null) {
			sendMsg("包對應應用資訊不存在", MsgType.ERROR);
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "包對應應用資訊不存在");
		}
		int port = app.getPort();
		//這個是伺服器部署路徑
		String uploadPath = app.getUploadPath();
		StringBuilder sb = new StringBuilder();
		String msg;
		Set<ServerDeployDto> deploys = deploy.getDeploys();
		for (ServerDeployDto deployDTO : deploys) {
			String ip = deployDTO.getIp();
			ExecuteShellUtil executeShellUtil = getExecuteShellUtil(ip);
			//判斷是否第一次部署
			boolean flag = checkFile(executeShellUtil, app);
			//第一步要確認伺服器上有這個目錄
			executeShellUtil.execute("mkdir -p " + app.getUploadPath());
			executeShellUtil.execute("mkdir -p " + app.getBackupPath());
			executeShellUtil.execute("mkdir -p " + app.getDeployPath());
			//上傳檔案
			msg = String.format("登陸到伺服器:%s", ip);
			ScpClientUtil scpClientUtil = getScpClientUtil(ip);
			log.info(msg);
			sendMsg(msg, MsgType.INFO);
			msg = String.format("上傳檔案到伺服器:%s<br>目錄:%s下，請稍等...", ip, uploadPath);
			sendMsg(msg, MsgType.INFO);
			scpClientUtil.putFile(fileSavePath, uploadPath);
			if (flag) {
				sendMsg("停止原來應用", MsgType.INFO);
				//停止應用
				stopApp(port, executeShellUtil);
				sendMsg("備份原來應用", MsgType.INFO);
				//備份應用
				backupApp(executeShellUtil, ip, app.getDeployPath()+FILE_SEPARATOR, app.getName(), app.getBackupPath()+FILE_SEPARATOR, id);
			}
			sendMsg("部署應用", MsgType.INFO);
			//部署檔案,並啟動應用
			String deployScript = app.getDeployScript();
			executeShellUtil.execute(deployScript);
			sleep(3);
			sendMsg("應用部署中，請耐心等待部署結果，或者稍後手動檢視部署狀態", MsgType.INFO);
			int i  = 0;
			boolean result = false;
			// 由於啟動應用需要時間，所以需要循環獲取狀態，如果超過30次，則認為是啟動失敗
			while (i++ < count){
				result = checkIsRunningStatus(port, executeShellUtil);
				if(result){
					break;
				}
				// 休眠6秒
				sleep(6);
			}
			sb.append("伺服器:").append(deployDTO.getName()).append("<br>應用:").append(app.getName());
			sendResultMsg(result, sb);
			executeShellUtil.close();
		}
	}

	private void sleep(int second) {
		try {
			Thread.sleep(second * 1000);
		} catch (InterruptedException e) {
			log.error(e.getMessage(),e);
		}
	}

	private void backupApp(ExecuteShellUtil executeShellUtil, String ip, String fileSavePath, String appName, String backupPath, Long id) {
		String deployDate = DateUtil.format(new Date(), DatePattern.PURE_DATETIME_PATTERN);
		StringBuilder sb = new StringBuilder();
		backupPath += appName + FILE_SEPARATOR + deployDate + "\n";
		sb.append("mkdir -p ").append(backupPath);
		sb.append("mv -f ").append(fileSavePath);
		sb.append(appName).append(" ").append(backupPath);
		log.info("備份應用指令碼:" + sb.toString());
		executeShellUtil.execute(sb.toString());
		//還原資訊入庫
		DeployHistory deployHistory = new DeployHistory();
		deployHistory.setAppName(appName);
		deployHistory.setDeployUser(SecurityUtils.getCurrentUsername());
		deployHistory.setIp(ip);
		deployHistory.setDeployId(id);
		deployHistoryService.create(deployHistory);
	}

	/**
	 * 停App
	 *
	 * @param port 埠
	 * @param executeShellUtil /
	 */
	private void stopApp(int port, ExecuteShellUtil executeShellUtil) {
		//發送停止命令
		executeShellUtil.execute(String.format("lsof -i :%d|grep -v \"PID\"|awk '{print \"kill -9\",$2}'|sh", port));

	}

	/**
	 * 指定埠程式是否在執行
	 *
	 * @param port 埠
	 * @param executeShellUtil /
	 * @return true 正在執行  false 已經停止
	 */
	private boolean checkIsRunningStatus(int port, ExecuteShellUtil executeShellUtil) {
		String result = executeShellUtil.executeForResult(String.format("fuser -n tcp %d", port));
		return result.indexOf("/tcp:")>0;
	}

	private void sendMsg(String msg, MsgType msgType) {
		try {
			WebSocketServer.sendInfo(new SocketMsg(msg, msgType), "deploy");
		} catch (IOException e) {
			log.error(e.getMessage(),e);
		}
	}

	@Override
	public String serverStatus(Deploy resources) {
		Set<ServerDeploy> serverDeploys = resources.getDeploys();
		App app = resources.getApp();
		for (ServerDeploy serverDeploy : serverDeploys) {
			StringBuilder sb = new StringBuilder();
			ExecuteShellUtil executeShellUtil = getExecuteShellUtil(serverDeploy.getIp());
			sb.append("伺服器:").append(serverDeploy.getName()).append("<br>應用:").append(app.getName());
			boolean result = checkIsRunningStatus(app.getPort(), executeShellUtil);
			if (result) {
				sb.append("<br>正在執行");
				sendMsg(sb.toString(), MsgType.INFO);
			} else {
				sb.append("<br>已停止!");
				sendMsg(sb.toString(), MsgType.ERROR);
			}
			log.info(sb.toString());
			executeShellUtil.close();
		}
		return "執行完畢";
	}

	private boolean checkFile(ExecuteShellUtil executeShellUtil, AppDto appDTO) {
		String result = executeShellUtil.executeForResult("find " + appDTO.getDeployPath() + " -name " + appDTO.getName());
		return result.indexOf(appDTO.getName())>0;
	}

	/**
	 * 啟動服務
	 * @param resources /
	 * @return /
	 */
	@Override
	public String startServer(Deploy resources) {
		Set<ServerDeploy> deploys = resources.getDeploys();
		App app = resources.getApp();
		for (ServerDeploy deploy : deploys) {
			StringBuilder sb = new StringBuilder();
			ExecuteShellUtil executeShellUtil = getExecuteShellUtil(deploy.getIp());
			//爲了防止重複啟動，這裡先停止應用
			stopApp(app.getPort(), executeShellUtil);
			sb.append("伺服器:").append(deploy.getName()).append("<br>應用:").append(app.getName());
			sendMsg("下發啟動命令", MsgType.INFO);
			executeShellUtil.execute(app.getStartScript());
			sleep(3);
			sendMsg("應用啟動中，請耐心等待啟動結果，或者稍後手動檢視執行狀態", MsgType.INFO);
			int i  = 0;
			boolean result = false;
			// 由於啟動應用需要時間，所以需要循環獲取狀態，如果超過30次，則認為是啟動失敗
			while (i++ < count){
				result = checkIsRunningStatus(app.getPort(), executeShellUtil);
				if(result){
					break;
				}
				// 休眠6秒
				sleep(6);
			}
			sendResultMsg(result, sb);
			log.info(sb.toString());
			executeShellUtil.close();
		}
		return "執行完畢";
	}

	/**
	 * 停止服務
	 * @param resources /
	 * @return /
	 */
	@Override
	public String stopServer(Deploy resources) {
		Set<ServerDeploy> deploys = resources.getDeploys();
		App app = resources.getApp();
		for (ServerDeploy deploy : deploys) {
			StringBuilder sb = new StringBuilder();
			ExecuteShellUtil executeShellUtil = getExecuteShellUtil(deploy.getIp());
			sb.append("伺服器:").append(deploy.getName()).append("<br>應用:").append(app.getName());
			sendMsg("下發停止命令", MsgType.INFO);
			//停止應用
			stopApp(app.getPort(), executeShellUtil);
			sleep(1);
			boolean result = checkIsRunningStatus(app.getPort(), executeShellUtil);
			if (result) {
				sb.append("<br>關閉失敗!");
				sendMsg(sb.toString(), MsgType.ERROR);
			} else {
				sb.append("<br>關閉成功!");
				sendMsg(sb.toString(), MsgType.INFO);
			}
			log.info(sb.toString());
			executeShellUtil.close();
		}
		return "執行完畢";
	}

	@Override
	public String serverReduction(DeployHistory resources) {
		Long deployId = resources.getDeployId();
		Deploy deployInfo = deployRepository.findById(deployId).orElseGet(Deploy::new);
		String deployDate = DateUtil.format(resources.getDeployDate(), DatePattern.PURE_DATETIME_PATTERN);
		App app = deployInfo.getApp();
		if (app == null) {
			sendMsg("應用資訊不存在：" + resources.getAppName(), MsgType.ERROR);
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "應用資訊不存在：" + resources.getAppName());
		}
		String backupPath = app.getBackupPath()+FILE_SEPARATOR;
		backupPath += resources.getAppName() + FILE_SEPARATOR + deployDate;
		//這個是伺服器部署路徑
		String deployPath = app.getDeployPath();
		String ip = resources.getIp();
		ExecuteShellUtil executeShellUtil = getExecuteShellUtil(ip);
		String msg;

		msg = String.format("登陸到伺服器:%s", ip);
		log.info(msg);
		sendMsg(msg, MsgType.INFO);
		sendMsg("停止原來應用", MsgType.INFO);
		//停止應用
		stopApp(app.getPort(), executeShellUtil);
		//刪除原來應用
		sendMsg("刪除應用", MsgType.INFO);
		executeShellUtil.execute("rm -rf " + deployPath + FILE_SEPARATOR + resources.getAppName());
		//還原應用
		sendMsg("還原應用", MsgType.INFO);
		executeShellUtil.execute("cp -r " + backupPath + "/. " + deployPath);
		sendMsg("啟動應用", MsgType.INFO);
		executeShellUtil.execute(app.getStartScript());
		sendMsg("應用啟動中，請耐心等待啟動結果，或者稍後手動檢視啟動狀態", MsgType.INFO);
		int i  = 0;
		boolean result = false;
		// 由於啟動應用需要時間，所以需要循環獲取狀態，如果超過30次，則認為是啟動失敗
		while (i++ < count){
			result = checkIsRunningStatus(app.getPort(), executeShellUtil);
			if(result){
				break;
			}
			// 休眠6秒
			sleep(6);
		}
		StringBuilder sb = new StringBuilder();
		sb.append("伺服器:").append(ip).append("<br>應用:").append(resources.getAppName());
		sendResultMsg(result, sb);
		executeShellUtil.close();
		return "";
	}

	private ExecuteShellUtil getExecuteShellUtil(String ip) {
		ServerDeployDto serverDeployDTO = serverDeployService.findByIp(ip);
		if (serverDeployDTO == null) {
			sendMsg("IP對應伺服器資訊不存在：" + ip, MsgType.ERROR);
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "IP對應伺服器資訊不存在：" + ip);
		}
		return new ExecuteShellUtil(ip, serverDeployDTO.getAccount(), serverDeployDTO.getPassword(),serverDeployDTO.getPort());
	}

	private ScpClientUtil getScpClientUtil(String ip) {
		ServerDeployDto serverDeployDTO = serverDeployService.findByIp(ip);
		if (serverDeployDTO == null) {
			sendMsg("IP對應伺服器資訊不存在：" + ip, MsgType.ERROR);
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "IP對應伺服器資訊不存在：" + ip);
		}
		return ScpClientUtil.getInstance(ip, serverDeployDTO.getPort(), serverDeployDTO.getAccount(), serverDeployDTO.getPassword());
	}

	private void sendResultMsg(boolean result, StringBuilder sb) {
		if (result) {
			sb.append("<br>啟動成功!");
			sendMsg(sb.toString(), MsgType.INFO);
		} else {
			sb.append("<br>啟動失敗!");
			sendMsg(sb.toString(), MsgType.ERROR);
		}
	}

	@Override
	public void download(List<DeployDto> queryAll, HttpServletResponse response) throws IOException {
		List<Map<String, Object>> list = new ArrayList<>();
		for (DeployDto deployDto : queryAll) {
			Map<String,Object> map = new LinkedHashMap<>();
			map.put("應用名稱", deployDto.getApp().getName());
			map.put("伺服器", deployDto.getServers());
			map.put("部署日期", deployDto.getCreateTime());
			list.add(map);
		}
		FileUtil.downloadExcel(list, response);
	}
}
