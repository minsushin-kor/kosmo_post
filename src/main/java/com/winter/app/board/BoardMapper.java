package com.winter.app.board;

import java.util.List;

public interface BoardMapper {
	
	// CRUD(create read update delete)
	
	//read
	public List<BoardDTO> list() throws Exception;
	
	public BoardDTO detail(BoardDTO boardDTO) throws Exception;
	
	//create
	public int create(BoardDTO bodaDto) throws Exception;
	
	//update
	public int update(BoardDTO bodaDto) throws Exception;
	
	//delete
	public int delete(BoardDTO bodaDto) throws Exception;
}
