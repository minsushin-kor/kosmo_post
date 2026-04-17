package com.winter.app.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.winter.app.file.FileDTO;
import com.winter.app.pager.Pager;

public interface BoardMapper {
	
	public Long getCount(Pager pager);
	
	// CRUD(create read update delete)
	
	//read
	public List<BoardDTO> list(Pager pager) throws Exception;
	
	public BoardDTO detail(BoardDTO boardDTO) throws Exception;
	
	//create
	public int create(BoardDTO boardDTO) throws Exception;
	
	public int createFile(FileDTO fileDTO) throws Exception;
	
	//update
	public int update(BoardDTO boardDTO) throws Exception;
	
	//delete
	public int delete(BoardDTO boardDTO) throws Exception;
}
