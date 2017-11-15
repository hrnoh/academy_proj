<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
				<!-- depth 1 -->
				<ul class="nav nav-tabs" id="nav">

					<!-- depth 1 - Home -->
					<li class="active">
						<a class="dropdown-toggle" href="/home">
							Home <span class="caret"></span>
						</a>
					 
<!-- 					depth 2
						<ul class="dropdown-menu">
							<li><a href="/home#introduce">학원 소개</a></li>
							<li><a href="/home#notice">공지사항</a></li>
						</ul> -->
					</li>

					<!-- depth 1 - 학생 -->
					<li>
						<a class="dropdown-toggle" href="/board/list">
							학생<span class="caret"></span>
						</a>

<!-- 					depth 2	
						<ul class="dropdown-menu">
							<li><a href="/board/list">공지사항 조회</a></li>
							<li><a href="/board/regist">공지사항 작성</a></li>
						</ul> -->
					</li>

					<!-- depth 1 - 학부모 -->
					<li>
						<a class="dropdown-toggle" href="/lecture/list?loginRole=${login.role }&uno=${login.uno}">
							학부모<span class="caret"></span>
						</a>
						
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
					<li>
						<a class="dropdown-toggle" href="">
							매니저<span class="caret"></span>
						</a>

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
					<li>
						<a class="dropdown-toggle" href="/user/manager">
							계정 관리<span class="caret"></span>
						</a>
						
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
					<li>
						<a class="dropdown-toggle" href="">
							알림장<span class="caret"></span>
						</a>
					</li>
					
					<!-- depth 1 - 수업 -->
					<li>
						<a class="dropdown-toggle" href="">
							수업<span class="caret"></span>
						</a>
					</li>
					
					<!-- depth 1 - 강의실 스트리밍 -->
					<li>
						<a class="dropdown-toggle" href="">
							강의실 스트리밍<span class="caret"></span>
						</a>
					</li>
						
				</ul>	<!-- nav 끝 -->
			</div>
		</div>
	</div>

	<!-- 센터 -->
	<div class="container text-center">
		<div class="row content">

			<!-- left menu -->
			<div class="col-xs-2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<b>HOME</b>
					</div>

					<ul class="list-group">

						<li class="list-group-item"><a href="#introduce">학원소개</a></li>
						<li class="list-group-item"><a href="/board/list">공지사항</a></li>
					</ul>
				</div>
			</div>


			<!-- contents -->
			<div class="col-xs-10 text-left">
				<h1 id="introduce">학원소개</h1>
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

				<!-- 공지사항 게시판 -->
				<h1 id="notice">공지사항</h1>
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
									<td id="title"><a href="/board/read?bno=${boardVO.bno}">${boardVO.title}</a>
										<c:if test="${boardVO.viewCnt >= 20}">
											<span class="hit">hit!</span>
										</c:if></td>
									<td>${boardVO.writer}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${boardVO.regDate}" /></td>
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



	<footer class="container text-center">
		<hr>
		<p>
			경기도 시흥시 산기대학로 237, TIP 000호 <br> TEL 031.888.3000 FAX
			031.888.1010 <br> KPU아카데미 대표 : 김학원 사업자등록번호 : 120-90-12547 학원등록번호
			: 제 001호 <br> ⓒ KPU Academy Inc. 2017 <br>
		</p>
	</footer>

	<script type="text/javascript">
		$("#logout").on("click", function(e) {
			$("#logoutForm").submit();
		});
	</script>

	<!-- nav js -->
	<script src="/resources/js/nav.js"></script>
</body>
</html>