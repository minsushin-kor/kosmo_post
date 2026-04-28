package com.winter.app.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	public int join(MemberDTO memberDTO) throws Exception;
	
	public int addProfile(ProfileDTO profileDTO) throws Exception;
	
	public MemberDTO detail(MemberDTO memberDTO) throws Exception;
	
	public List<MemberDTO> isCheck(MemberDTO memberDTO) throws Exception;
	
}
