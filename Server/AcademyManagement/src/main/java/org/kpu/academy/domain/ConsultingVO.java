package org.kpu.academy.domain;

import java.util.Date;

public class ConsultingVO {
	private Integer counselor;
	private Integer client;
	private String content;
	private Date consultingDate;
	public Integer getCounselor() {
		return counselor;
	}
	public void setCounselor(Integer counselor) {
		this.counselor = counselor;
	}
	public Integer getClient() {
		return client;
	}
	public void setClient(Integer client) {
		this.client = client;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getConsultingDate() {
		return consultingDate;
	}
	public void setConsultingDate(Date consultingDate) {
		this.consultingDate = consultingDate;
	}
	@Override
	public String toString() {
		return "ConsultingVO [counselor=" + counselor + ", client=" + client + ", content=" + content
				+ ", consultingDate=" + consultingDate + "]";
	}
}
