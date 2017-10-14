<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 조회</title>
<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="/resources/css/noticeboard.css">

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
					<a href="/board/list" class="list-group-item active">공지사항 조회</a>
					<c:if test="${login.role == '관리자' }">
						<a href="/board/regist"	class="list-group-item">공지사항 작성</a>
					</c:if>
				</div>
			</div>
		</div>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			<!-- 공지사항 조회 -->
			<h1>공지사항 조회</h1>
			<!-- 공지사항 게시판 -->
			<%@include file="../layout/notice_board.jsp" %>
			
		</div>
		<!-- contents end -->

	</div>
</div>

<!-- footer -->
<%@include file="../layout/footer.jsp"%>