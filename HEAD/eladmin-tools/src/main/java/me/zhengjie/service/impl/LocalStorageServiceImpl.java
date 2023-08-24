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
package me.zhengjie.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import cn.hutool.core.util.ObjectUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.config.FileProperties;
import me.zhengjie.domain.LocalStorage;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.repository.LocalStorageRepository;
import me.zhengjie.service.LocalStorageService;
import me.zhengjie.service.dto.LocalStorageDto;
import me.zhengjie.service.dto.LocalStorageQueryCriteria;
import me.zhengjie.service.mapstruct.LocalStorageMapper;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.ValidationUtil;

/**
* @author Zheng Jie
* @date 2019-09-05
*/
@Service
@RequiredArgsConstructor
public class LocalStorageServiceImpl implements LocalStorageService {

    private final LocalStorageRepository localStorageRepository;
    private final LocalStorageMapper localStorageMapper;
    private final FileProperties properties;

    @Override
    public Object queryAll(LocalStorageQueryCriteria criteria, Pageable pageable){
        Page<LocalStorage> page = localStorageRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicateByUser(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(localStorageMapper::toDto));
    }

    @Override
    public List<LocalStorageDto> queryAll(LocalStorageQueryCriteria criteria){
        return localStorageMapper.toDto(localStorageRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicateByUser(root,criteria,criteriaBuilder)));
    }
    @Override
    public LocalStorageDto findById(Long id){
        LocalStorage localStorage = localStorageRepository.findById(id).orElseGet(LocalStorage::new);
        ValidationUtil.isNull(localStorage.getId(),"LocalStorage","id",id);
        return localStorageMapper.toDto(localStorage);
    }
    /**
     * 創建本地存儲文件
     * function overloading, type not the same 
     */
    public LocalStorage create(String name, File file, String frompage) {  
    
    	return this.create(name,file, frompage);
    }
    /**
    * 創建本地存儲文件
    * 修改：回傳存儲的檔案資訊，而不是保存它
    */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public LocalStorage create(String name, MultipartFile multipartFile, String frompage) {
    	FileUtil.checkSize(properties.getMaxSize(), multipartFile.getSize());
    	String suffix = FileUtil.getExtensionName(multipartFile.getOriginalFilename());
    	
    	String filePath = properties.getPath().getPath() + LocalDate.now().format(DateTimeFormatter.ofPattern("yyyyMMdd")) 
    			+ File.separator + frompage + File.separator;
    	File file;
    	String fileName = FileUtil.getFileNameNoEx(multipartFile.getOriginalFilename()) + 
    		"-" + new SimpleDateFormat("yyyyMMddhhmmssS").format(new Date()) + "." + suffix;
    	File tempFile = new File(filePath + fileName);

    	if (tempFile.exists()) {
    		file = FileUtil.overwrite(multipartFile, filePath);
    	} else {
    		file = FileUtil.upload(multipartFile, filePath);
    	}

    	if(ObjectUtil.isNull(file)){
    		throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "上傳失敗");
    	}

    	try {
    	    name = org.apache.commons.lang3.StringUtils.isBlank(name) ? FileUtil.getFileNameNoEx(multipartFile.getOriginalFilename()) : name;
    	    String storageUuid = UUID.randomUUID().toString(); // Generate a random UUID and convert it to String
    	    LocalStorage localStorage = new LocalStorage(
    	            file.getName(),
    	            name,
    	            suffix,
    	            file.getPath(),
    	            FileUtil.getFileType(suffix),
    	            FileUtil.getSize(multipartFile.getSize()),
    	            FileUtil.getSHA256(file), 
    	            frompage,
    	            storageUuid  // Add the generated UUID
    	    );
    	    return localStorageRepository.save(localStorage);
    	} catch (Exception e) {
    		FileUtil.delete(fileName, SecurityUtils.getCurrentUsername());
    	    throw e;
    	}
    }



    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(LocalStorage resources) {
        LocalStorage localStorage = localStorageRepository.findById(resources.getId()).orElseGet(LocalStorage::new);
        ValidationUtil.isNull( localStorage.getId(),"LocalStorage","id",resources.getId());
        localStorage.copy(resources);
        localStorageRepository.save(localStorage);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            LocalStorage storage = localStorageRepository.findById(id).orElseGet(LocalStorage::new);
            FileUtil.del(storage.getPath());
            localStorageRepository.delete(storage);
        }
    }
    /*
     * 
     */
    @Override
    public void exportExcel(List<LocalStorageDto> queryAll, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (LocalStorageDto localStorageDTO : queryAll) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("檔名", localStorageDTO.getRealName());
            map.put("備註名", localStorageDTO.getName());
            map.put("檔案型別", localStorageDTO.getType());
            map.put("檔案大小", localStorageDTO.getSize());
            map.put("建立者", localStorageDTO.getCreateBy());
            map.put("建立日期", localStorageDTO.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

// ------------------ function new added by Ko ---------------
    @Override
    public Resource load(String filename) {
        try {
            Path file = Paths.get(properties.getPath().getPath()).resolve(filename);
            Resource resource = new UrlResource(file.toUri());
            
            if (resource.exists() || resource.isReadable()) {
                return resource;
            } else {
                throw new RuntimeException("Could not read the file!");
            }
        } catch (MalformedURLException e) {
            throw new RuntimeException("Error: " + e.getMessage());
        }
    }
    @Override
    public LocalStorage findByUuid(String uuid) {
        return localStorageRepository.findByStorageUuid(uuid);
    }
    
    String localStorageDirectory = ""; //TODO
    public LocalStorage save(String name, String path) throws IOException {
        LocalStorage localStorage = new LocalStorage();
        
        // Set the necessary properties of LocalStorage
        localStorage.setName(name);
        localStorage.setPath(path);

        // This is assuming your local storage is a directory on your machine
        File destinationFile = new File(localStorageDirectory + "/" + name);
        Files.copy(Paths.get(path), destinationFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
        
        // Set other properties of LocalStorage after saving the file
        // (such as size, sha2, realName, etc.)
        // You can use Files.probeContentType(destinationFile.toPath()) to get the file type
        // For size, you can use Files.size(destinationFile.toPath()) 
        // You should calculate sha2 using appropriate libraries 

        // Save the LocalStorage entity to your database
        localStorageRepository.save(localStorage);
        
        return localStorage;
    }

    
    public InputStream loadAsInputStream(String name) throws IOException {
        // Find the file path in your local storage using the provided name
        String path = localStorageDirectory + "/" + name;

        return new FileInputStream(path);
    }

	@Override
	public File downloadFile(String fileGuid) throws IOException {
		LocalStorage localFile = localStorageRepository.findByStorageUuid(fileGuid);
		if (localFile == null) {
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "查無檔案資料列");
		}
		
		File file = new File(localFile.getPath());
		if (!file.exists()) {
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, String.format("檔案不存在於路徑: %s", localFile.getPath()));
		}
		
		return file;
	}

}

