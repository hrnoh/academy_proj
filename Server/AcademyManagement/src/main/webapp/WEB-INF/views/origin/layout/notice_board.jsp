<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
				<c:forEach var="boardVO" items="${list}" varStatus="status">
					<tr>
						<td>${boardVO.bno}</td>
						<td id="title">
						<a href="/board/read${pageMaker.makeQuery(pageMaker.cri.page)}&bno=${boardVO.bno}">${boardVO.title}</a>
							<c:if test="${boardVO.viewCnt >= 20}">
								<span class="hit">hit!</span>
							</c:if></td>
						<td>${boardVO.writer}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regDate}" /></td>
						<td>${boardVO.viewCnt}</td>
					<tr>
				</c:forEach>
			</tbody>
		</table>
		
		<c:if test="${login.role == '관리자' }">
		<div class="text-right" id="write">
			<a href="/board/regist">글쓰기</a>
		</div>
		</c:if>

		<!-- Paging 처리 -->
		<div id="paging">
			<div class="text-center">
				<ul class="pagination">

					<c:if test="${pageMaker.prev}">
						<li><a
							href="list${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
					</c:if>

					<c:forEach begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }" var="idx">
						<li
							<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
							<a href="list${pageMaker.makeQuery(idx)}">${idx}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li><a
							href="list${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
					</c:if>

				</ul>
			</div>
		</div>
	</div>
</div>

<script>
var msg = "${msg}";

if(msg == "SUCCESS") {
	alert("처리가 완료되었습니다.");
}
</script>
<!-- 출처: http://bigfat.tistory.com/80 [Bigfat] -->