package org.kpu.academy.domain;

public class LectureVO {
	private Integer lno;
	private String lname;
	private String day;
	private String startTime;
	private String endTime;
	private Integer personnel;
	private String room;
	private Integer target;
	private Integer uno;
	public Integer getLno() {
		return lno;
	}
	public void setLno(Integer lno) {
		this.lno = lno;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public Integer getPersonnel() {
		return personnel;
	}
	public void setPersonnel(Integer personnel) {
		this.personnel = personnel;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public Integer getTarget() {
		return target;
	}
	public void setTarget(Integer target) {
		this.target = target;
	}
	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	@Override
	public String toString() {
		return "LectureVO [lno=" + lno + ", lname=" + lname + ", day=" + day + ", startTime=" + startTime + ", endTime="
				+ endTime + ", personnel=" + personnel + ", room=" + room + ", target=" + target + ", uno=" + uno + "]";
	}
	
	
}