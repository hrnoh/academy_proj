package org.kpu.academy.domain;

public class AttendanceVO {
	private Integer uno;
	private Integer lno;
	private String year;
	private String month;
	private String day;
	private String type;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "AttendanceVO [uno=" + uno + ", lno=" + lno + ", year=" + year + ", month=" + month + ", day=" + day
				+ ", type=" + type + "]";
	}
	
	
}
