<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="ko">
<head>
<meta charset="utf-8">

<title>홈페이지 - KPU Academy</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 반응형 제거 -->
<link rel="stylesheet" href="/resources/css/nonresponsive.css">

<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="/resources/css/noticeboard.css">

<!-- script -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<!-- Login Modal -->
	<jsp:include page="login_modal.jsp" flush="false"></jsp:include>
	
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
								style="cursor: pointer"> <span
								class="glyphicon glyphicon-log-in"></span> Login
							</a>
						</c:when>
						<c:otherwise>
							<form id="logoutForm" action="/user/logout" method="post">
								<span>${login.name }님
									<button class="btn btn-default btn-sm" id="logout">Logout</button>
								</span>
							</form>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

	<!-- 네비게이션 바 -->
	<div class="container" style="margin-bottom: 10px;">
		<div class="row">
			<div class="col-xs-offset-2 col-xs-10">
				<!-- depth 1 -->
				<ul class="nav nav-tabs" id="nav">

					<!-- depth 1 - Home -->
					<li role="presentation">
						<a href="/home">Home</a>
					 
<!-- 					depth 2
						<ul class="dropdown-menu">
							<li><a href="/home#introduce">학원 소개</a></li>
							<li><a href="/home#notice">공지사항</a></li>
						</ul> -->
					</li>

					<!-- depth 1 - 학생 -->
					<li role="presentation">
						<a href="/student">학생</a>

<!-- 					depth 2	
						<ul class="dropdown-menu">
							<li><a href="/board/list">공지사항 조회</a></li>
							<li><a href="/board/regist">공지사항 작성</a></li>
						</ul> -->
					</li>

					<!-- depth 1 - 학부모 -->
					<li role="presentation">
						<a href="/parents">학부모</a>
						
<!-- 						depth 2
							<ul class="dropdown-menu"> -->
<!-- 							수업 조회(학생, 강사, 관리자) -->
<!-- 							<li><a -->
<%-- 								href="/lecture/list?loginRole=${login.role }&uno=${login.uno}">수업 --%>
<!-- 									조회</a></li> -->
<!-- 							수업 등록(강사, 관리자) -->
<%-- 							<c:if test="${(login.role == '강사') || (login.role == '관리자') }"> --%>
<!-- 								<li><a href="/lecture/regist">수업 등록</a></li> -->
<%-- 							</c:if> --%>
<!-- 						</ul> -->
					</li>

					<!-- depth 1 - 매니저 -->
					<li role="presentation">
						<a href="/manager">매니저</a>

<%-- 					depth 2	
						<ul class="dropdown-menu">
							<c:choose>
								<c:when test="${login.role == '학생' }">
									<li><a
										href="/consulting/list?searchType=client&keyword=${login.name }">상담
											신청 내역 조회</a></li>
								</c:when>
								<c:when test="${login.role == '강사' }">
									<li><a
										href="/consulting/list?searchType=counselor&keyword=${login.name }">상담
											신청 내역 조회</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/consulting/list">상담 신청 내역 조회</a></li>
								</c:otherwise>
							</c:choose>
							<li><a href="/consulting/regist">상담 등록</a></li>
						</ul> --%>
					</li>

					<!-- depth 1 - 운용자 -->
					<li role="presentation">
						<a href="/operator">운용자</a>
						
<%-- 						depth 2	
							<ul class="dropdown-menu">
								<li><a href="/user/student">학생 정보 조회/수정</a></li>
								<c:if test="${login.role == '강사' || login.role == '관리자' }">
									<li><a href="/user/teacher">강사 정보 조회/수정</a></li>
								</c:if>
								<c:if test="${login.role == '관리자' }">
									<li><a href="/user/manager">관리자 정보 수정</a></li>
								</c:if>
							</ul> --%>
					</li>
					
					<!-- depth 1 - 알림장 -->
					<li role="presentation">
						<a href="/notice">알림장</a>
					</li>
					
					<!-- depth 1 - 수업 -->
					<li role="presentation">
						<a href="/lecture">수업</a>
					</li>
					
					<!-- depth 1 - 강의실 스트리밍 -->
					<li role="presentation">
						<a href="/streaming">강의실 스트리밍</a>
					</li>
						
				</ul>	<!-- nav 끝 -->
			</div>
		</div>
	</div>