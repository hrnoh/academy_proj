package org.kpu.academy.domain;

import java.util.Date;

public class NoticesVO {
	private Integer nno;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private Date modDate;
	private Integer viewCnt;
	
	public Integer getNno() {
		return nno;
	}
	public void setNno(Integer nno) {
		this.nno = nno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}
	public Integer getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(Integer viewCnt) {
		this.viewCnt = viewCnt;
	}
	
	@Override
	public String toString() {
		return "NoticesVO [nno=" + nno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regDate=" + regDate + ", modDate=" + modDate + ", viewCnt=" + viewCnt + "]";
	}
}
