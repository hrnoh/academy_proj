package org.kpu.academy.domain;

public class SponsorVO {
	private Integer sponsorNum;
	private Integer sno;
	private String relation;
	private String name;
	private String sex;
	private Integer age;
	private String mPhone;
	
	public Integer getSponsorNum() {
		return sponsorNum;
	}
	public void setSponsorNum(Integer sponsorNum) {
		this.sponsorNum = sponsorNum;
	}
	public Integer getSno() {
		return sno;
	}
	public void setSno(Integer sno) {
		this.sno = sno;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	@Override
	public String toString() {
		return "SponsorVO [sponsorNum=" + sponsorNum + ", sno=" + sno + ", relation=" + relation + ", name=" + name
				+ ", sex=" + sex + ", age=" + age + ", mPhone=" + mPhone + "]";
	}
}
