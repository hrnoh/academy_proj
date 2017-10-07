package org.kpu.academy.domain;

public class TakeCourseVO {
	private Integer sno;
	private Integer lno;
	private Double grade;
	public Integer getSno() {
		return sno;
	}
	public void setSno(Integer sno) {
		this.sno = sno;
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
		return "TakeCourseVO [sno=" + sno + ", lno=" + lno + ", grade=" + grade + "]";
	}
	
	
}
