package org.kpu.academy.domain;

public class AttendanceVO {
	private Integer ano;
	private Integer uno;
	private Integer lno;
	private String year;
	private String month;
	private String day;
	private String fullDate;
	private String type;
	
	public Integer getAno() {
		return ano;
	}
	public void setAno(Integer ano) {
		this.ano = ano;
	}
	public void setFullDate(String fullDate) {
		this.fullDate = fullDate;
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
	public String getFullDate() {
		return this.fullDate;
	}
	@Override
	public String toString() {
		return "AttendanceVO [ano=" + ano + ", uno=" + uno + ", lno=" + lno + ", year=" + year + ", month=" + month
				+ ", day=" + day + ", fullDate=" + fullDate + ", type=" + type + "]";
	}
	
	
}
