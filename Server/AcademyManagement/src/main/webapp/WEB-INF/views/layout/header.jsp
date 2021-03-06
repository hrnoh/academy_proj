<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<a href="/home"> <img alt="logo" src="/resources/img/Logo2.jpg" />
					</a>
				</div>
			</div>
			<div class="col-xs-8 text-right">
				<div>
					<c:choose>
						<c:when test="${login == null }">
							<a data-toggle="modal" data-target="#loginModal"
								style="cursor: pointer">
								<span class="glyphicon glyphicon-log-in"></span>
									Login
							</a>
						</c:when>
						<c:otherwise>
							<form id="logoutForm" action="/user/logout" method="post">
								<span>${login.name }님 <button class="btn btn-default btn-sm" id="logout">Logout</button></span>
							</form>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

	<!-- Login Modal -->
	<div id="loginModal" class="modal fade" role="dialog" style="top: 100;">
		<div class="modal-dialog" style="width: 350px">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>
				<div class="modal-body" style="padding-bottom: 0px;">
					<form action="/user/login" method="post" class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-xs-3" for="id">ID :</label>
							<div class="col-xs-8">
								<input class="form-control" name="id" type="text"
									placeholder="Enter ID">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-xs-3" for="pw">PW :</label>
							<div class="col-xs-8">
								<input class="form-control" name="pwd" type="password"
									placeholder="Enter password">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-offset-8 col-xs-3">
								<input class="form-control" type="submit" value="Login"
									class="btn btn-default">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<!-- 네비게이션 바 -->
	<div class="container" style="margin-bottom: 10px;">
		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-10">
				<ul class="nav nav-tabs" id="nav">
					<li class="active"><a class="dropdown-toggle" href="/home">
							HOME <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="/home#introduce">학원 소개</a></li>
							<li><a href="/home#notice">공지사항</a></li>
						</ul></li>

					<c:if test="${login != null}">
					<!--  홈페이지 수정 (관리자) -->
					<c:if test="${login.role == '관리자' }">
						<li><a class="dropdown-toggle" href="/board/list">홈페이지 수정 <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="/board/list">공지사항 조회</a></li>
								<li><a href="/board/regist">공지사항 작성</a></li>
							</ul></li>
					</c:if>

					<!-- 수업(학생, 강사, 관리자) -->
					<li><a class="dropdown-toggle" href="/lecture/list?loginRole=${login.role }&uno=${login.uno}">수업 <span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<!-- 수업 조회(학생, 강사, 관리자) -->
							<li><a href="/lecture/list?loginRole=${login.role }&uno=${login.uno}">수업 조회</a></li>
							<!-- 수업 등록(강사, 관리자) -->
							<c:if test="${(login.role == '강사') || (login.role == '관리자') }">
								<li><a href="/lecture/regist">수업 등록</a></li>
							</c:if>
						</ul></li>
						
					<!-- 상담(학생, 강사, 관리자) -->
					<li>
					<c:choose>
						<c:when test="${login.role == '학생' }">
							<a class="dropdown-toggle" href="/consulting/list?searchType=client&keyword=${login.name }">상담<span
							class="caret"></span></a>
						</c:when>
						<c:when test="${login.role == '강사' }">
							<a class="dropdown-toggle" href="/consulting/list?searchType=counselor&keyword=${login.name }">상담<span
							class="caret"></span></a>
						</c:when>
						<c:otherwise>
							<a class="dropdown-toggle" href="/consulting/list">상담<span
							class="caret"></span></a>
						</c:otherwise>
					</c:choose>
						<ul class="dropdown-menu">
							<c:choose>
								<c:when test="${login.role == '학생' }">
									<li><a href="/consulting/list?searchType=client&keyword=${login.name }">상담 신청 내역 조회</a></li>
								</c:when>
								<c:when test="${login.role == '강사' }">
									<li><a href="/consulting/list?searchType=counselor&keyword=${login.name }">상담 신청 내역 조회</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/consulting/list">상담 신청 내역 조회</a></li>
								</c:otherwise>
							</c:choose>
							<li><a href="/consulting/regist">상담 등록</a></li>
						</ul>
					</li>
					
					<!-- 계정 관리(학생, 강사, 관리자) -->
					<li>
						<!-- 학생 정보 조회/수정(학생, 강사, 관리자) -->
						<!-- 강사 정보 조회/수정(강사, 관리자) -->
						<!-- 관리자 정보 수정(관리자) -->
					<c:choose>
						<c:when test="${login.role == '관리자' }">
							<a class="dropdown-toggle" href="/user/manager">계정 관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/user/student">학생 정보 조회/수정</a></li>
								<c:if test="${login.role == '강사' || login.role == '관리자' }">
									<li><a href="/user/teacher">강사 정보 조회/수정</a></li>
								</c:if>
								<c:if test="${login.role == '관리자' }">
									<li><a href="/user/manager">관리자 정보 수정</a></li>
								</c:if>
							</ul>
						</c:when>
						
						<c:when test="${login.role == '강사' }">
							<a class="dropdown-toggle" href="/user/teacher/detail?uno=${login.uno }">계정 관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/user/student">학생 정보 조회/수정</a></li>
								<li><a href="/user/teacher/detail?uno=${login.uno }">강사 정보 조회/수정</a></li>
							</ul>
						</c:when>
						
						<c:otherwise>	<!-- 학생 -->
							<a class="dropdown-toggle" href="/user/student/detail?uno=${login.uno }">계정 관리<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/user/student/detail?uno=${login.uno }">학생 정보 조회/수정</a></li>
							</ul>
						</c:otherwise>
					</c:choose>
					</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$("#logout").on("click", function (e) {
			$("#logoutForm").submit();
		});
	</script>