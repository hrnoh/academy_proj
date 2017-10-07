package org.kpu.academy.domain;

import java.util.Date;

public class DiaryVO {
	private Integer dno;
	private String title;
	private String content;
	private Date regDate;
	private Date modDate;
	private Integer sponsorNum;
	private Integer tno;
	public Integer getDno() {
		return dno;
	}
	public void setDno(Integer dno) {
		this.dno = dno;
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
	public Integer getSponsorNum() {
		return sponsorNum;
	}
	public void setSponsorNum(Integer sponsorNum) {
		this.sponsorNum = sponsorNum;
	}
	public Integer getTno() {
		return tno;
	}
	public void setTno(Integer tno) {
		this.tno = tno;
	}
	@Override
	public String toString() {
		return "DiaryVO [dno=" + dno + ", title=" + title + ", content=" + content + ", regDate=" + regDate
				+ ", modDate=" + modDate + ", sponsorNum=" + sponsorNum + ", tno=" + tno + "]";
	}
	
	
}
