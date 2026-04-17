package com.winter.app.file;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	
	@Value("${app.upload.base}")
	private String path;
	
	public String fileSave(String name, MultipartFile mf) throws Exception {
		// 1. 어디에 저장?
		File file = new File(path, name);
		if(!file.exists()) {
			//mkdirs > make directorys
			file.mkdirs();
		}
		
		// 2. 파일명은?
		String fileName = UUID.randomUUID().toString();
		
		// 3. 확장자는?
		fileName = fileName + "_" + mf.getOriginalFilename();
		
		file = new File(file, fileName);
		
		// 4. 저장
		//a. multipartfile의 tranferto 메서드 사용
		//mf.transferTo(file);
		
		//b. filecopyutils의 copy 메서드 사용
		FileCopyUtils.copy(mf.getBytes(), file);
		
		return fileName;
	}

}
