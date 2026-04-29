package com.winter.app.review;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewDTO {

	private Long reviewNum;
	private String username;
	private String reviewContents;
	private Long reviewStar;
	private LocalDateTime reviewDate;
	private Long productNum;
}
