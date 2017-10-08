package org.kpu.academy.domain;

public class TakeCourseVO {
	private Integer uno;
	private Integer lno;
	private Double grade;
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
	public Double getGrade() {
		return grade;
	}
	public void setGrade(Double grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "TakeCourseVO [uno=" + uno + ", lno=" + lno + ", grade=" + grade + "]";
	}
}
