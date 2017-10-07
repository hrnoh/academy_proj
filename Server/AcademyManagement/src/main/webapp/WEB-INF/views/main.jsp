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
					<a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a> &nbsp;&nbsp; <a href="#"><span
						class="glyphicon glyphicon-envelope"></span> Contact Us</a>
					&nbsp;&nbsp;
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
			<div class="col-xs-8">
				<ul class="nav nav-pills" id="nav">
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">수납관리
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Submenu 1-1</a></li>
							<li><a href="#">Submenu 1-2</a></li>
							<li><a href="#">Submenu 1-3</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">상담관리
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Submenu 1-1</a></li>
							<li><a href="#">Submenu 1-2</a></li>
							<li><a href="#">Submenu 1-3</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">성적관리
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Submenu 1-1</a></li>
							<li><a href="#">Submenu 1-2</a></li>
							<li><a href="#">Submenu 1-3</a></li>
						</ul></li>
					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">출결관리
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Submenu 1-1</a></li>
							<li><a href="#">Submenu 1-2</a></li>
							<li><a href="#">Submenu 1-3</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="col-xs-2">
				<span>&nbsp;</span>
			</div>
		</div>

	</div>


	<div class="container text-center">
		<div class="row content">
			<div class="col-xs-2">
				<ul class="list-group">
					<li class="list-group-item active">Head</li>
					<li class="list-group-item"><a href="#nav">First item</a></li>
					<li class="list-group-item"><a href="#">Second item</a></li>
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
			$("#nav > li").mouseenter(function() {
				$(this).attr("class", "open");
			});

			$("#nav > li").mouseleave(function() {
				$(this).attr("class", "");
			});
		});
	</script>
</body>
</html>