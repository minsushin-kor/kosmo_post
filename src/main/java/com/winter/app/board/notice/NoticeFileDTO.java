package com.winter.app.board.notice;

import com.winter.app.file.FileDTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeFileDTO extends FileDTO{
	private Long boardNum;
}
