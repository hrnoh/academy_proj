package org.kpu.academy.domain;

import java.util.Date;

/*
 * consulting.cno,
			counselor.uno as counselorNum,
			counselor.name as counselor, 
			client.uno as clientNum,
			client.name as client, 
		    client.role as type, 
		    consultingDate, 
		    consulting.content,
		    consulting.status
 * 
 * */
public class ConsultingVO {
	private Integer cno;
	private Integer counselorNum;
	private Integer clientNum;
	private String counselor;
	private String client;
	private String type;
	private String consultingDate;
	private String content;
	private String status;
	
	public Integer getCno() {
		return cno;
	}
	public void setCno(Integer cno) {
		this.cno = cno;
	}
	public Integer getCounselorNum() {
		return counselorNum;
	}
	public void setCounselorNum(Integer counselorNum) {
		this.counselorNum = counselorNum;
	}
	public Integer getClientNum() {
		return clientNum;
	}
	public void setClientNum(Integer clientNum) {
		this.clientNum = clientNum;
	}
	public String getCounselor() {
		return counselor;
	}
	public void setCounselor(String counselor) {
		this.counselor = counselor;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getConsultingDate() {
		return consultingDate;
	}
	public void setConsultingDate(String consultingDate) {
		this.consultingDate = consultingDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "ConsultingVO [cno=" + cno + ", counselorNum=" + counselorNum + ", clientNum=" + clientNum
				+ ", counselor=" + counselor + ", client=" + client + ", type=" + type + ", consultingDate="
				+ consultingDate + ", content=" + content + ", status=" + status + "]";
	}
	
	
}
