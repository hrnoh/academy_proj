package org.kpu.academy.domain;

import java.util.Date;

public class HelpVO {
	private Integer tno;
	private Integer sno;
	private String contents;
	private Date helpDate;
	public Integer getTno() {
		return tno;
	}
	public void setTno(Integer tno) {
		this.tno = tno;
	}
	public Integer getSno() {
		return sno;
	}
	public void setSno(Integer sno) {
		this.sno = sno;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getHelpDate() {
		return helpDate;
	}
	public void setHelpDate(Date helpDate) {
		this.helpDate = helpDate;
	}
	@Override
	public String toString() {
		return "HelpVO [tno=" + tno + ", sno=" + sno + ", contents=" + contents + ", helpDate=" + helpDate + "]";
	}
	
	
}
