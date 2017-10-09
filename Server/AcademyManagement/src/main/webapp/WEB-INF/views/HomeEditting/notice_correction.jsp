<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 수정</title>
<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="resources/css/noticeboard.css">

<!-- 게시판 글쓰기 css -->
<link rel="stylesheet" href="resources/css/writingboard.css">

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<%@include file="left_menu.jsp" %>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			
			<!-- 공지사항 수정 -->
			<h1>공지사항 수정</h1>
			<form method="post" id="boardForm">
				
				<input type="hidden" name="bno" value="${boardVO.bno }">
				<input type="hidden" name="uno" value="1">
				
				<table class="border">
					<tr>
						<th id="title">제 목</th>
						<td colspan="4"><input name="title" type="text"
							size="72" maxlength="100" value="${boardVO.title }" /></td>
					</tr>
					<tr>
						<th id="title">내 용</th>
						<td colspan="4"><textarea name="content" cols="80"
								rows="20">${boardVO.content }</textarea></td>
					</tr>

					<tr align="right" valign="middle">
						<td colspan="5">
						<!-- value값 설정하면 같은 submit이라 해도 구분 가능,
							그래서 둘 다 type=submit 으로 작성함 -->
						<input type="submit" value="저장">
						<input type="button" value="취소" onclick="history.back(-1);">
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
									href="/board/read?page=${cri.page }&perPageNum=${cri.perPageNum}&bno=${boardVO.bno}">${boardVO.title}</a>
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