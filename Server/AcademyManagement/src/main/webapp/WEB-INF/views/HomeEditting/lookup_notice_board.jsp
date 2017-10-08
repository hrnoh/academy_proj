<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 조회</title>
<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="resources/css/noticeboard.css">

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<%@include file="left_menu.jsp" %>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			<!-- 공지사항 조회 -->
			<h1>공지사항 조회</h1>
			<!-- 공지사항 게시판 -->
			<%@include file="../layout/notice_board.jsp" %>
			<div id="write">
				<a href="notice_writing">글쓰기</a>
			</div>
			
		</div>
		<!-- contents end -->

	</div>
</div>

<!-- footer -->
<%@include file="../layout/footer.jsp"%>