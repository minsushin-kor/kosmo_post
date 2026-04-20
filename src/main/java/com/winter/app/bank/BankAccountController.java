package com.winter.app.bank;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.winter.app.pager.Pager;

@Controller
@RequestMapping("/bank/*")
public class BankAccountController {
	
	@Autowired
	private BankAccountService bankAccountService;
	
	@GetMapping("list")
	public String list(BankAccountDTO bankAccountDTO, Model model) throws Exception {
		List<BankAccountDTO> ar = bankAccountService.list(bankAccountDTO);
		model.addAttribute("list", ar);
		return "bank/list";
	}
	
}
