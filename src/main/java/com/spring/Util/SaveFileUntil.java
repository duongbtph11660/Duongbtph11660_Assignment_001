package com.spring.Util;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class SaveFileUntil {
	public File handleUploadFile(MultipartFile file) {
		String folder = "C:\\Java5_SpringBoot\\Duongbtph11660_Assignment_01\\src\\main\\webapp\\storag";
		File myUploadFolder = new File(folder);
		if(!myUploadFolder.exists()) {
			myUploadFolder.mkdirs();
		}
		File saveFile = null;
		try {
			//Lưu File vào thư mục đã được chọn
//			spring validate file mime type
//			https://www.codejava.net/frameworks/spring-boot/spring-boot-file-upload-tutorial
			String uuid = UUID.randomUUID().toString();
			String fileName = uuid+"_"+file.getOriginalFilename();
			 saveFile = new File(myUploadFolder,fileName);
			 file.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return saveFile;
	}
}
