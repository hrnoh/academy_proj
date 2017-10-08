<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>홈페이지 - KPU Academy</title>

<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="/resources/css/noticeboard.css">

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<div class="col-xs-2">
			<ul class="list-group">
				<li class="list-group-item active">HOME</li>
				<li class="list-group-item"><a href="#introduce">학원소개</a></li>
				<li class="list-group-item"><a href="#notice">공지사항</a></li>
			</ul>
		</div>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			<h1 id="introduce">학원소개</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Excepteur sint occaecat
				cupidatat non proident, sunt in culpa qui officia deserunt mollit
				anim id est laborum consectetur adipiscing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
				veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
				ea commodo consequat.</p>
			<hr>
			
			<!-- 공지사항 게시판 -->
			<h1 id="notice">공지사항</h1>
			<%@include file="../layout/notice_board.jsp" %>
			
		</div>
		<!-- contents end -->

	</div>
</div>

<!-- footer -->
<%@include file="../layout/footer.jsp"%>