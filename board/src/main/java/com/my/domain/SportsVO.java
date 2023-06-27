package com.my.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class SportsVO {
	
	private int s_num;
	private String writer;
	private String title;
	private String content;
	private int count;
	private String category;
	private Date date;
	private String grade;
	private String division;

}
