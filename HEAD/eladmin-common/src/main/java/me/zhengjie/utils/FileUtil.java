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
package me.zhengjie.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.nio.file.DirectoryNotEmptyException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import cn.hutool.core.io.IoUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.poi.excel.BigExcelWriter;
import cn.hutool.poi.excel.ExcelUtil;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;

/**
 * File工具類，擴充套件 hutool 工具包
 *
 * @author Zheng Jie
 * @date 2018-12-27
 */
public class FileUtil extends cn.hutool.core.io.FileUtil {

    private static final Logger log = LoggerFactory.getLogger(FileUtil.class);

    /**
     * 系統臨時目錄
     * <br>
     * windows 包含路徑分割符，但Linux 不包含,
     * 在windows \\==\ 前提下，
     * 為安全起見 同意拼裝 路徑分割符，
     * <pre>
     *       java.io.tmpdir
     *       windows : C:\Users/xxx\AppData\Local\Temp\
     *       linux: /temp
     * </pre>
     */
    public static final String SYS_TEM_DIR = System.getProperty("java.io.tmpdir") + File.separator;
    /**
     * 定義GB的計算常量
     */
    private static final int GB = 1024 * 1024 * 1024;
    /**
     * 定義MB的計算常量
     */
    private static final int MB = 1024 * 1024;
    /**
     * 定義KB的計算常量
     */
    private static final int KB = 1024;

    /**
     * 格式化小數
     */
    private static final DecimalFormat DF = new DecimalFormat("0.00");

    public static final String IMAGE = "圖片";
    public static final String TXT = "文件";
    public static final String MUSIC = "音樂";
    public static final String VIDEO = "視訊";
    public static final String OTHER = "其他";


    /**
     * MultipartFile轉File
     */
    public static File toFile(MultipartFile multipartFile) {
        // 獲取檔名
        String fileName = multipartFile.getOriginalFilename();
        // 獲取檔案後綴
        String prefix = "." + getExtensionName(fileName);
        File file = null;
        try {
            // 用uuid作為檔名，防止產生的臨時檔案重複
            file = new File(SYS_TEM_DIR + IdUtil.simpleUUID() + prefix);
            // MultipartFile to File
            multipartFile.transferTo(file);
        } catch (IOException e) {
            log.error(e.getMessage(), e);
        }
        return file;
    }

    /**
     * 獲取副檔名，不帶 .
     */
    public static String getExtensionName(String filename) {
        if ((filename != null) && (filename.length() > 0)) {
            int dot = filename.lastIndexOf('.');
            if ((dot > -1) && (dot < (filename.length() - 1))) {
                return filename.substring(dot + 1);
            }
        }
        return filename;
    }

    /**
     * Java檔案操作 獲取不帶副檔名的檔名
     */
    public static String getFileNameNoEx(String filename) {
        if ((filename != null) && (filename.length() > 0)) {
            int dot = filename.lastIndexOf('.');
            if ((dot > -1) && (dot < (filename.length()))) {
                return filename.substring(0, dot);
            }
        }
        return filename;
    }

    /**
     * 檔案大小轉換
     */
    public static String getSize(long size) {
        String resultSize;
        if (size / GB >= 1) {
            //如果目前Byte的值大於等於1GB
            resultSize = DF.format(size / (float) GB) + "GB   ";
        } else if (size / MB >= 1) {
            //如果目前Byte的值大於等於1MB
            resultSize = DF.format(size / (float) MB) + "MB   ";
        } else if (size / KB >= 1) {
            //如果目前Byte的值大於等於1KB
            resultSize = DF.format(size / (float) KB) + "KB   ";
        } else {
            resultSize = size + "B   ";
        }
        return resultSize;
    }

    /**
     * inputStream 轉 File
     */
    static File inputStreamToFile(InputStream ins, String name){
        File file = new File(SYS_TEM_DIR + name);
        if (file.exists()) {
            return file;
        }
        OutputStream os = null;
        try {
            os = new FileOutputStream(file);
            int bytesRead;
            int len = 8192;
            byte[] buffer = new byte[len];
            while ((bytesRead = ins.read(buffer, 0, len)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            CloseUtil.close(os);
            CloseUtil.close(ins);
        }
        return file;
    }

    
    /**
     * 根據檔名解析出檔案的上傳路徑，並處理文件上傳或重寫
     */
    private static File prepareAndTransferFile(MultipartFile file, String filePath, boolean overwrite) throws IOException {
        String name = getFileNameNoEx(file.getOriginalFilename()); // 獲取文件名，不包括擴展名
        String suffix = getExtensionName(file.getOriginalFilename()); // 獲取文件擴展名
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddhhmmssS");
        String nowStr = "-" + format.format(date); // 獲取當前時間戳
        String fileName = name + nowStr + "." + suffix; // 創建新的文件名
        String path = filePath + fileName; // 創建新的文件路徑
        File dest = new File(path).getCanonicalFile();

        // 檢查目錄是否存在，若不存在則創建
        if (!dest.getParentFile().exists() && !dest.getParentFile().mkdirs()) {
            System.out.println("Failed to create directory.");
        }

        // 若需要重寫文件，並且文件已存在，則刪除原文件
        if (overwrite && dest.exists() && !dest.delete()) {
            System.out.println("Failed to delete existing file.");
        }

        // 儲存新文件
        file.transferTo(dest);
        return dest;
    }

    /**
     * 上傳文件
     */
    public static File upload(MultipartFile file, String filePath) {
        try {
            return prepareAndTransferFile(file, filePath, false);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    /**
     * 覆蓋並上傳文件
     */
    public static File overwrite(MultipartFile file, String filePath) {
        try {
            return prepareAndTransferFile(file, filePath, true);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    
    /*
     * 刪除文件（甫新增）
     */
    public static void delete(String fileName, String user) {
        Path filePath = Paths.get(fileName);
        try {
            System.out.println("File deletion initiated by " + user + " at " + new Timestamp(System.currentTimeMillis()));
            Files.delete(filePath);
            System.out.println("File " + fileName + " deleted successfully");
        } catch (NoSuchFileException x) {
            System.err.format("%s: no such file or directory%n", filePath);
        } catch (DirectoryNotEmptyException x) {
            System.err.format("%s: not empty%n", filePath);
        } catch (IOException x) {
            // File permission problems are caught here.
            System.err.println(x);
        }
    }

    /**
     * 導出excel
     */
    public static void downloadExcel(List<Map<String, Object>> list, HttpServletResponse response) throws IOException {
        String tempPath = SYS_TEM_DIR + IdUtil.fastSimpleUUID() + ".xlsx";
        File file = new File(tempPath);
        BigExcelWriter writer = ExcelUtil.getBigWriter(file);
        // 一次性寫出內容，使用預設樣式，強制輸出標題
        writer.write(list, true);
        SXSSFSheet sheet = (SXSSFSheet)writer.getSheet();
        //上面需要強轉SXSSFSheet  不然沒有trackAllColumnsForAutoSizing方法
        sheet.trackAllColumnsForAutoSizing();
        //列寬自適應
        writer.autoSizeColumnAll();
        //response為HttpServletResponse對像
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        //test.xls是彈出下載對話方塊的檔名，不能為中文，中文請自行編碼
        response.setHeader("Content-Disposition", "attachment;filename=file.xlsx");
        ServletOutputStream out = response.getOutputStream();
        // 終止后刪除臨時檔案
        file.deleteOnExit();
        writer.flush(out, true);
        //此處記得關閉輸出Servlet流
        IoUtil.close(out);
    }

    public static String getFileType(String type) {
        String documents = "txt doc pdf ppt pps xlsx xls docx";
        String music = "mp3 wav wma mpa ram ra aac aif m4a";
        String video = "avi mpg mpe mpeg asf wmv mov qt rm mp4 flv m4v webm ogv ogg";
        String image = "bmp dib pcp dif wmf gif jpg tif eps psd cdr iff tga pcd mpt png jpeg";
        if (image.contains(type)) {
            return IMAGE;
        } else if (documents.contains(type)) {
            return TXT;
        } else if (music.contains(type)) {
            return MUSIC;
        } else if (video.contains(type)) {
            return VIDEO;
        } else {
            return OTHER;
        }
    }

    public static void checkSize(long maxSize, long size) {
        // 1M
        int len = 1024 * 1024;
        if (size > (maxSize * len)) {
            throw new BadRequestException(SysErrLev.FILE_SIZE_LIMIT_EXCEED, "檔案超出規定大小:" + maxSize + "MB");
        }
    }

    /**
     * 判斷兩個檔案是否相同
     */
    public static boolean check(File file1, File file2) {
        String img1Md5 = getMd5(file1);
        String img2Md5 = getMd5(file2);
        if(img1Md5 != null){
            return img1Md5.equals(img2Md5);
        }
        return false;
    }

    /**
     * 判斷兩個檔案是否相同
     */
    public static boolean check(String file1Md5, String file2Md5) {
        return file1Md5.equals(file2Md5);
    }

    private static byte[] getByte(File file) {
        // 得到檔案長度
        byte[] b = new byte[(int) file.length()];
        InputStream in = null;
        try {
            in = new FileInputStream(file);
            try {
            	in.read(b);
            } catch (IOException e) {
                log.error(e.getMessage(), e);
            }
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            return null;
        } finally {
            CloseUtil.close(in);
        }
        return b;
    }

    private static String getMd5(byte[] bytes) {
        // 16進位制字元
        char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest mdTemp = MessageDigest.getInstance("MD5");
            mdTemp.update(bytes);
            byte[] md = mdTemp.digest();
            int j = md.length;
            char[] str = new char[j * 2];
            int k = 0;
            // 移位 輸出字串
            for (byte byte0 : md) {
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }

    /**
     * 下載檔案
     *
     * @param request  /
     * @param response /
     * @param file     /
     */
    public static void downloadFile(HttpServletResponse response, File file, boolean deleteOnExit) {
    	try (InputStream is = new FileInputStream(file);
    		 OutputStream os = response.getOutputStream();) {
    		response.setContentType("application/octet-stream; charset=utf-8");
    		response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(file.getName(), "utf-8"));
    		
    		byte[] buffer = new byte[(byte) file.length()];
    		int b = -1;
    		while ((b = is.read(buffer)) > -1) {
    			os.write(buffer, 0, b);
    		}
    		response.flushBuffer();
    	} catch (FileNotFoundException e) {
			throw new BadRequestException("檔案不存在於路徑: " + file.getPath());
		} catch (IOException e) {
			throw new BadRequestException("檔案無法讀取: " + file.getPath());
		}
    	
    	if (deleteOnExit) {
    		file.deleteOnExit();
    	}
    }

    public static String getMd5(File file) {
        return getMd5(getByte(file));
    }
    
    public static String getSHA256(File file) {
    	String result = "";
    	try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.reset();
			md.update(getByte(file));
			result = String.format("%064x", new BigInteger(1, md.digest()));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
    	return result;
    }

}
