package org.kpu.academy.domain;

import java.util.Date;

public class ManagerVO {
	private Integer mno;
	private String id;
	private String pwd;
	private String name;
	private Integer age;
	private String sex;
	private String email;
	private String address;
	private String phone;
	private String mPhone;
	private Date regDate;
	public Integer getMno() {
		return mno;
	}
	public void setMno(Integer mno) {
		this.mno = mno;
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "ManagerVO [mno=" + mno + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", age=" + age + ", sex="
				+ sex + ", email=" + email + ", address=" + address + ", phone=" + phone + ", mPhone=" + mPhone
				+ ", regDate=" + regDate + "]";
	}
	
	
}
