package com.winter.app.bank;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.winter.app.board.BoardMapper;

@Mapper
public interface BankAccountMapper {
	
	public List<BankAccountDTO> list(BankAccountDTO bankAccountDTO) throws Exception;
}
