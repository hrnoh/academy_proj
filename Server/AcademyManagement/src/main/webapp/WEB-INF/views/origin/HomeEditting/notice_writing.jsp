<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 작성</title>
<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="/resources/css/noticeboard.css">

<!-- 게시판 글쓰기 css -->
<link rel="stylesheet" href="/resources/css/writingboard.css">

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<div class="col-xs-2">
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<b>공지사항</b>
				</div>
				<div class="list-group">
					<a href="/board/list" class="list-group-item">공지사항 조회</a>
					<c:if test="${login.role == '관리자' }">
						<a href="/board/regist"	class="list-group-item active">공지사항 작성</a>
					</c:if>
				</div>
			</div>
		</div>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			
			<!-- 공지사항 작성 -->
			<h1>공지사항 작성</h1>
			<form method="post" action="/board/regist" name="boardForm">
				
				<!-- uno 추가 -->		
				<input name="uno" type="hidden" value="1" />
				
				<table class="border">
					<tr>
						<th id="title">제 목</th>
						<td colspan="4">
							<input name="title" type="text" size="72" maxlength="100" value="" />
						</td>
					</tr>
					<tr>
						<th id="title">내 용</th>
						<td colspan="4">
							<textarea name="content" cols="80"rows="20"></textarea>
						</td>
					</tr>

					<tr align="right" valign="middle">
						<td colspan="5">
							<input type="submit" value="등록"> 
							<input type="reset" value="초기화">
						</td>
					</tr>
				</table>
			</form>
			<!-- 출처: http://all-record.tistory.com/127 [세상의 모든 기록] -->
			
			<!-- 공지사항 게시판 -->
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
								<td id="title"><a
									href="/board/read?bno=${boardVO.bno}">${boardVO.title}</a>
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
			</div>

		</div>
		<!-- contents end -->

	</div>
</div>

<!-- footer -->
<%@include file="../layout/footer.jsp"%>