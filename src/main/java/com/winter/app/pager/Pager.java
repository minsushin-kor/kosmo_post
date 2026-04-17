package com.winter.app.pager;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Pager {
	
	//보고 있는 페이지 번호
	private Long page;
	
	//페이지당 보여줄 글의 갯수
	private Long perPage;
	
	//offset에 표현할 시작번호
	private Long startNum;
	
	//getter 선언방법
	public Long getPerPage() {
		if(perPage == null || perPage < 1) {
			this.perPage = 5L;
		}
		return this.perPage;
	}
	
	public Long getPage() {
		if(page== null || page<1) {
			this.page = 1L;
		}
		return this.page;
	}
	
	public void makeStartNum() {
		this.startNum = (this.getPage()-1)*this.getPerPage();
	}
	
}
