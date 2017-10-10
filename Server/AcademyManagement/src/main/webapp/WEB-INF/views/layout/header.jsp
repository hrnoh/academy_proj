<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="utf-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 반응형 제거 -->
<link rel="stylesheet" href="/resources/css/nonresponsive.css">

<!-- script -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<!-- 로고 / nav -->
<div class="container">
	<div class="row">
		<div class="col-xs-4">
			<div id="logo">
				<a href="/home">
				<img alt="logo" src="/resources/img/Logo2.jpg"/>
				</a>
			</div>
		</div>
		<div class="col-xs-4"></div>
		<div class="col-xs-4 text-right">
			<div>
				<a href="#"><span class="glyphicon glyphicon-log-in"></span>
					Login</a> &nbsp;&nbsp; <a href="#"><span
					class="glyphicon glyphicon-envelope"></span> Contact Us</a>
				&nbsp;&nbsp;
			</div>
		</div>
	</div>
</div>

<!-- 네비게이션 바 -->
<div class="container" style="margin-bottom:10px;">

	<div class="row">
		<div class="col-xs-2"></div>
		<div class="col-xs-10">
			<ul class="nav nav-tabs" id="nav">
				<li class="active"><a class="dropdown-toggle"
					data-toggle="dropdown" href="/home">HOME <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/home#introduce">학원 소개</a></li>
						<li><a href="/home#notice">공지사항</a></li>
					</ul></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="/HomeEditting">홈페이지
						수정 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="/board/list">공지사항 조회</a></li>
						<li><a href="/board/regist">공지사항 작성</a></li>
					</ul></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">일정
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">전체 일정 조회</a></li>
						<li><a href="#">일정 등록/수정</a></li>
					</ul></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="/lecture/list">수업
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="/lecture/list">수업 조회</a></li>
						<li><a href="/lecture/regist">수업 등록</a></li>
					</ul></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="/consulting">상담
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="/consulting/manager/view_application_list">상담 신청 내역 조회</a></li>
						<li><a href="/consulting/student/consulting_apply">상담 신청</a></li>
						<li><a href="/consulting/manager/consulting_regist">상담 등록</a></li>
					</ul></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="/user/student">계정
						관리 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="/user/student">학생 정보 조회/수정</a></li>
						<li><a href="/user/teacher">강사 정보 조회/수정</a></li>
						<li><a href="/user/manager">관리자 정보 수정</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>