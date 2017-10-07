<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 반응형 제거 -->
<link rel="stylesheet" href="resources/css/nonresponsive.css">

<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="resources/css/noticeboard.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>

	<!-- 헤더 -->
	<%@include file="../layout/header.jsp" %>

	<div class="container text-center">
		<div class="row content">
			
			<div class="col-xs-2">
				<ul class="list-group">
					<li class="list-group-item active">HOME</li>
					<li class="list-group-item"><a href="#introduce">학원소개</a></li>
					<li class="list-group-item"><a href="#notice">공지사항</a></li>
				</ul>
			</div>
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
				<div id="container">
					<%-- <div align="right">
						<!-- Login 검증 -->
						<!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
						<c:if test="${id != null}">
							<%@include file="loginOk.jsp" %>
						</c:if>
						<c:if test="${id == null}">
							<%@include file="login.jsp" %>
						</c:if>
					</div> --%>

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
								<c:forEach var="article" items="${articles}" varStatus="status">
									<tr>
										<td>${article.articleNumber}</td>
										<td id="title"><c:if test="${article.depth > 0}">
                  &nbsp;&nbsp;
                </c:if> <a
											href="/bbs/content.bbs?articleNumber=${article.articleNumber}&pageNum=${pageNum}">${article.title}</a>
											<c:if test="${article.hit >= 20}">
												<span class="hit">hit!</span>
											</c:if></td>
										<td>${article.id}</td>
										<td>${article.writeDate}</td>
										<td>${article.hit}</td>
									<tr>
								</c:forEach>
							</tbody>
						</table>

						<!-- Paging 처리 -->
						<div id="paging">${pageCode}</div>
						<div id="write">
							<a href="/bbs/writeForm.bbs?pageNum=${pageNum}">글쓰기</a>
						</div>
					</div>
				</div>
				<!-- 출처: http://bigfat.tistory.com/80 [Bigfat] -->
			</div>
			
		</div>
	</div>

	<!-- footer -->
	<%@include file="../layout/footer.jsp" %>

	<!-- script -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<!-- nav js -->
	<script>
		$(document).ready(function() {
			$("#nav li").hover(function() {
				$(this).attr("class", "focus open");},
				function() {
					$(this).attr("class", "");
				});
		});
	</script>
</body>
</html>