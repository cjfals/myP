package com.my.domain;

import lombok.Data;

@Data
public class Criteria {
	private int page;
	private int pageSize;
	
	public Criteria() {
		this.page = 1;
		this.pageSize = 30;
	}
	
	public int getPage() {
		return page;
	}
	public int getPageSize() {
		return pageSize;
	}
	
	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	public void setPageSize(int pageSize) {
		if(pageSize <= 0 || pageSize > 100) {
			this.pageSize = 10;
			return;
		}
		this.pageSize = pageSize;
	}
	
	public int getPageStart() {
		
		return (page - 1 ) * pageSize;
	}

}
