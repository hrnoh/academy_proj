package org.kpu.academy.domain;

public class TakeCourseVO {
	private Integer uno;
	private Integer lno;
	private String name;
	private Integer grade;
	private String sex;
	private String mPhone;
	private String email;
	private Double score;
	private String lname;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	@Override
	public String toString() {
		return "TakeCourseVO [uno=" + uno + ", lno=" + lno + ", name=" + name + ", grade=" + grade + ", sex=" + sex
				+ ", mPhone=" + mPhone + ", email=" + email + ", score=" + score + ", lname=" + lname + "]";
	}
	
	
}
