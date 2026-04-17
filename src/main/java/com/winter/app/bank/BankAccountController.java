package com.winter.app.bank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bank/*")
public class BankAccountController {
	
	@Autowired
	private BankAccountService bankAccountService;
	
	@GetMapping("list")
	public String list() throws Exception {
		
		return "board/list";
	}
	
}
