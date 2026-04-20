package com.winter.app.member;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
	private String username;
	private String name;
	private String password;
	private String phone;
	private String email;
	private LocalDate birth;
		
	// 1:1의 관계일 때 아래처럼 표현해야한다. 
	private ProfileDTO profileDTO;
}
