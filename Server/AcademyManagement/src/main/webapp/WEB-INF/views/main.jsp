<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 반응형 제거 -->
<link rel="stylesheet" href="resources/nonresponsive.css">

<style>
body {
	/*background:		#c0d5d6; */
	
}

#logo>img {
	border-radius: 10px;
}
</style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>

	<!-- 	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Projects</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav> -->

	<!-- 헤더 -->
	<div class="container">
		<div class="row">
			<div class="col-xs-4">
				<div id="logo">
					<img alt="logo" src="resources/Logo2.jpg"></img>
				</div>
			</div>
			<div class="col-xs-4">
				<span>&nbsp;</span>
			</div>
			<div class="col-xs-4 text-right">
				<div>
					<a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a> &nbsp;&nbsp;
					<a href="#"><span class="glyphicon glyphicon-envelope"></span> Contact Us</a> &nbsp;&nbsp;
				</div>
			</div>
		</div>
	</div>

	<!-- 네비게이션 바 -->
	<div class="container">

		<div class="row">
			<div class="col-xs-2">
				<span>&nbsp;</span>
			</div>
			<div class="col-xs-10">
				<ul class="nav nav-tabs" id="nav">
					<li class="active"><a class="dropdown-toggle" data-toggle="dropdown" href="#">HOME
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">학원 소개</a></li>
							<li><a href="#">공지사항</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">메인페이지 수정
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항 등록</a></li>
							<li><a href="#">공지사항 수정/삭제</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">일정
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">전체 일정 조회</a></li>
							<li><a href="#">일정 등록/수정</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">수업
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">수업 조회</a></li>
							<li><a href="#">수업 등록</a></li>
							<li><a href="#">수업 수정/삭제</a></li>
							<li><a href="#">출석부 확인</a></li>
							<li><a href="#">출석부 등록/수정</a></li>
							<li><a href="#">성적 확인</a></li>
							<li><a href="#">성적 등록/수정</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">알림장
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">알림장 조회</a></li>
							<li><a href="#">알림장 등록</a></li>
							<li><a href="#">알림장 수정/삭제</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">상담
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">상담 신청/조회</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">학생 상담</li>
							<li><a href="#">학생 상담 조회</a></li>
							<li><a href="#">학생 상담 등록</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">학부모 상담</li>
							<li><a href="#">학부모 상담 조회</a></li>
							<li><a href="#">학부모 상담 등록</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">계정 관리
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">학생 정보 조회/수정</a></li>
							<li><a href="#">강사 정보 조회/수정</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">학생/보호자 계정 관리</li>
							<li><a href="#">학생/보호자 등록</a></li>
							<li><a href="#">학생/보호자 조회</a></li>
							<li><a href="#">학생/보호자 수정/삭제</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">강사 계정 관리</li>
							<li><a href="#">강사 등록</a></li>
							<li><a href="#">강사 조회</a></li>
							<li><a href="#">강사 수정/삭제</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">관리자 계정 관리</li>
							<li><a href="#">관리자 정보 수정</a></li>
						</ul></li>
				</ul>
			</div>
		</div>

	</div>


	<div class="container text-center">
		<div class="row content">
			<div class="col-xs-2">
				<ul class="list-group">
					<li class="list-group-item active">HOME</li>
					<li class="list-group-item"><a href="#">학원소개</a></li>
					<li class="list-group-item"><a href="#">공지사항</a></li>
				</ul>
			</div>
			<div class="col-xs-8 text-left">
				<h1>Welcome</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat
					cupidatat non proident, sunt in culpa qui officia deserunt mollit
					anim id est laborum consectetur adipiscing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
					minim veniam, quis nostrud exercitation ullamco laboris nisi ut
					aliquip ex ea commodo consequat.</p>
				<hr>
				<h3>Test</h3>
				<p>Lorem ipsum...</p>
			</div>
			<div class="col-xs-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
	</div>

	<footer class="container text-center">
		<p>Footer Text</p>
	</footer>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<!-- nav js -->
	<script>
		$(document).ready(function() {
			var now = $("#nav li:active");
			var state = now.clone();
			
			$("#nav li").hover(function() {
				$(this).attr("class", "focus open");},
				function() {
					$(this).attr("class", "");
				});
		});
	</script>
</body>
</html>