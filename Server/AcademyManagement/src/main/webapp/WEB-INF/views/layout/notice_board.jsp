<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="container">
	<%-- <div align="right">
						<!-- Login 검증 -->
						<!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
						<c:if test="${id != null}">
							<%@include file="loginOk.jsp" %>
						</c:if>
						<c:if test="${id == null}">
							<%@include file="login.jsp" %>
						</c:if>
					</div> --%>

	<div>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th width="10%">번호</th>
					<th width="50%">제목</th>
					<th width="10%">작성자</th>
					<th width="20%">작성일</th>
					<th width="10%">조회</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="article" items="${articles}" varStatus="status">
					<tr>
						<td>${article.articleNumber}</td>
						<td id="title"><c:if test="${article.depth > 0}">
                  &nbsp;&nbsp;
                </c:if> <a
							href="/bbs/content.bbs?articleNumber=${article.articleNumber}&pageNum=${pageNum}">${article.title}</a>
							<c:if test="${article.hit >= 20}">
								<span class="hit">hit!</span>
							</c:if></td>
						<td>${article.id}</td>
						<td>${article.writeDate}</td>
						<td>${article.hit}</td>
					<tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- Paging 처리 -->
		<div id="paging">${pageCode}</div>
	</div>
</div>
<!-- 출처: http://bigfat.tistory.com/80 [Bigfat] -->