package com.winter.app.board;

import java.util.List;

public interface BoardMapper {
	
	// CRUD(create read update delete)
	
	public List<BoardDTO> list() throws Exception;
	
	public BoardDTO detail(BoardDTO boardDTO) throws Exception;
	
	
}
