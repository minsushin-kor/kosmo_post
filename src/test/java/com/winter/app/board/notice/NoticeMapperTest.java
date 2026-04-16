package com.winter.app.board.notice;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.winter.app.board.BoardDTO;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class NoticeMapperTest {

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Test
	void testList() throws Exception {
		List<BoardDTO> ar = noticeMapper.list();
		assertNotEquals(0, ar);
		log.info("ar" + ar);
	}
	
	@Test
	void testCreate() throws Exception{
		
		for(int i=0;i<23;i++)
		{
			NoticeDTO noticeDTO = new NoticeDTO();
			noticeDTO.setBoardTitle("Notice Title" + i);
			noticeDTO.setBoardWriter("Notice Writer" + i);
			noticeDTO.setBoardContents("Notice Contents" + i);
			noticeMapper.create(noticeDTO);
			
			if(i%3==0) {
				Thread.sleep(500);
			}
		}
		System.out.println("finish");
	}

}
