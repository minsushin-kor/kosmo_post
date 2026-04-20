package com.winter.app.bank;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.winter.app.board.BoardDTO;
import com.winter.app.board.BoardService;
import com.winter.app.pager.Pager;

@Service
public class BankAccountService{

	@Autowired
	private BankAccountMapper bankAccountMapper;
	
	public List<BankAccountDTO> list(BankAccountDTO bankAccountDTO) throws Exception{
		List<BankAccountDTO> ar = bankAccountMapper.list(bankAccountDTO);
		return ar;
	}

}
