package org.kpu.academy.domain;

public class DiaryVO {
	private Integer dno;
	private String content;
	private String year;
	private String month;
	private String day;
	private Integer uno;
	public Integer getDno() {
		return dno;
	}
	public void setDno(Integer dno) {
		this.dno = dno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	@Override
	public String toString() {
		return "DiaryVO [dno=" + dno + ", content=" + content + ", year=" + year + ", month=" + month + ", day=" + day
				+ ", uno=" + uno + "]";
	}
}
