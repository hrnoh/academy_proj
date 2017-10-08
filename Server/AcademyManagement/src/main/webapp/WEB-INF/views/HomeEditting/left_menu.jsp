<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-xs-2">
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<b>홈페이지 수정</b>
		</div>

		<!-- List group -->
		<div class="list-group">
			<c:set var="uri" value="${pageContext.request.requestURI }" />
			<c:choose>
				<c:when test="${uri eq '/WEB-INF/views/HomeEditting/lookup_notice_board.jsp' }">
					<a href="/HomeEditting/lookup_notice_board" class="list-group-item active">공지사항 조회</a>
					<a href="/HomeEditting/notice_writing"	class="list-group-item">공지사항 작성</a>
				</c:when>
				
				<c:otherwise>
					<a href="/HomeEditting/lookup_notice_board" class="list-group-item">공지사항 조회</a>
					<a href="/HomeEditting/notice_writing" class="list-group-item active">공지사항 작성</a>
				</c:otherwise>
			</c:choose>
			
		</div>
	</div>
</div>