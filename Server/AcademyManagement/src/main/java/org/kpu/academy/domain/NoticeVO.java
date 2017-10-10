package org.kpu.academy.domain;

import java.util.Date;

public class NoticeVO {
	private Integer nno;
	private String lname;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private Date modDate;
	private Integer viewCnt;
	private Integer uno;
	private Integer lno;
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
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
	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	public Integer getLno() {
		return lno;
	}
	public void setLno(Integer lno) {
		this.lno = lno;
	}
	@Override
	public String toString() {
		return "NoticeVO [nno=" + nno + ", lname=" + lname + ", title=" + title + ", content=" + content + ", writer="
				+ writer + ", regDate=" + regDate + ", modDate=" + modDate + ", viewCnt=" + viewCnt + ", uno=" + uno
				+ ", lno=" + lno + "]";
	}
	
	
}
