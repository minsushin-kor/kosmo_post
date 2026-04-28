package com.winter.app.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.winter.app.file.FileManager;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private FileManager fileManager;
	
	@Value("${app.member}")
	private String name;
	
	@Override
	public int join(MemberDTO memberDTO, MultipartFile file) throws Exception {
		
		//DB에 저장
		int result = memberMapper.join(memberDTO);
		
		//프로필 이미지를 하드디스크에 저장
		// 폴더(바구니) 자체가 존재하는가? && 그 폴더 안에 진짜 파일(데이터)이 들어있는가? 
		if(file != null && !file.isEmpty()) {
			String fileName = fileManager.fileSave(name, file);
		
				
		//저장된 정보를 DB에 저장
		ProfileDTO profileDTO = new ProfileDTO();
		profileDTO.setFileName(fileName);
		profileDTO.setOriName(file.getOriginalFilename());
		profileDTO.setUsername(memberDTO.getUsername());
		
		result = memberMapper.addProfile(profileDTO);
		}
		
		return result;
	}
	
	@Override
	public MemberDTO detail(MemberDTO memberDTO) throws Exception {
		MemberDTO check = memberMapper.detail(memberDTO);
		
		if(check != null) {
			if(check.getPassword().equals(memberDTO.getPassword())) {
				return check;
			}
		}
		
		return null;
	}
	
	@Override
	public MemberDTO idCheck(MemberDTO memberDTO) throws Exception{
		return memberMapper.detail(memberDTO);
		
	}
}
