package org.kpu.academy.domain;

import java.util.Date;

public class UserVO {
	private Integer uno;
	private String id;
	private String pwd;
	private String name;
	private Integer age;
	private Integer grade;
	private String sex;
	private String email;
	private String address;
	private String phone;
	private String mPhone;
	private String status;
	private Date regDate;
	private String role;
	private String relation;
	private Integer cno;
	public Integer getUno() {
		return uno;
	}
	public void setUno(Integer uno) {
		this.uno = uno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public Integer getCno() {
		return cno;
	}
	public void setCno(Integer cno) {
		this.cno = cno;
	}
	@Override
	public String toString() {
		return "UserVO [uno=" + uno + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", age=" + age + ", grade="
				+ grade + ", sex=" + sex + ", email=" + email + ", address=" + address + ", phone=" + phone
				+ ", mPhone=" + mPhone + ", status=" + status + ", regDate=" + regDate + ", role=" + role
				+ ", relation=" + relation + ", cno=" + cno + "]";
	}
}
