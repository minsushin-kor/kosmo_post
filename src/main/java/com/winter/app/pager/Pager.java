package com.winter.app.pager;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Pager {
	
	//검색어 (null이 들어오면 빈 문자열을 반환하기 위해 초기값 선언)
	private String search="";
	
	//검색 컬럼
	private String kind; // v1: title, v2: contents, v3: writer에서 검색
	
	//보고 있는 페이지 번호
	private Long page;
	
	//페이지당 보여줄 글의 갯수
	private Long perPage;
	
	//offset에 표현할 시작번호
	private Long startNum;
	
	//이전블럭 유무
	private boolean pre = true; // true면 이전 블럭이 존재한다. flase면 이전 블럭이 없다 
	
	//다음블럭 유무
	private boolean next = true; // ture면 이전 블럭이 존재한다. false면 이전 블럭이 없다  
	
	private Long start;
	private Long end;
	
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
	
	public void makePageNum(Long totalCount) {
		//1. 총 페이지 수 구하기
		Long totalPage=(long)(Math.ceil((double)totalCount/this.getPerPage()));
		
		//2. 총 블럭 수로 계산하기
		Long perBlock = 5L; // 한 블럭당 출력할 번호의 갯수
		Long totalBlock = totalPage/perBlock;
		if (totalPage%perBlock != 0){
			totalBlock++;
		}
		
		//3. 페이지 번호로 현재 블럭 번호 구하기
		Long curBlock = this.getPage()/perBlock;
		if(this.page%perBlock != 0) {
			curBlock++;
		}
		
		//4. 현재 블럭번호로 시작번호와 끝번호 구하기
		start = (curBlock-1)*perBlock + 1;
		end = curBlock*perBlock;
		
		//5. 현재 블럭 번호가 총 블럭과 같다면 endpage 번호를 다시 추정
		if(curBlock==totalBlock) {
			end=totalPage;
			next=false;
		}
		
		//6. 블럭 유무 확인
		if(curBlock<2) {
			pre = false;
		}
		
	}
	
	public void makeStartNum() {
		this.startNum = (this.getPage()-1)*this.getPerPage();
	}
	
}
