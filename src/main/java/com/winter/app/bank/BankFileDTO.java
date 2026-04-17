package com.winter.app.bank;

import com.winter.app.file.FileDTO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BankFileDTO extends FileDTO{
	private Long accountNum;
}
