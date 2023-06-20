package com.my.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int b_num;
	private String writer;
	private String title;
	private String content;
	private int count;
	private Date date;

}
