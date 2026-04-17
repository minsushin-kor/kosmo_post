package com.winter.app.bank;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BankAccountDTO {
	private Long accountNum;
	private String accountName;
	private String accountDesc;
	private String accountSort;
	private Double accountRate;
	
}
