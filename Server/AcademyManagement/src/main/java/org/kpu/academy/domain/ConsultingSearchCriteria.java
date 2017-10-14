package org.kpu.academy.domain;

public class ConsultingSearchCriteria extends Criteria {
	private String searchType;
	private String keyword;
	private String status;
	private String role;
	private String consultingDate;
	
	public ConsultingSearchCriteria() {
		super();
		this.searchType = "";
		this.keyword = "";
		this.status = "";
		this.role = "";
		this.consultingDate = "";
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getConsultingDate() {
		return consultingDate;
	}

	public void setConsultingDate(String consultingDate) {
		this.consultingDate = consultingDate;
	}

	@Override
	public String toString() {
		return "ConsultingSearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", status=" + status
				+ ", role=" + role + ", consultingDate=" + consultingDate + "]";
	}
	
	
}
