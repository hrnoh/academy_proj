<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../include/header.jsp" flush="false"></jsp:include>

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
<%-- 
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
 --%>
			</div>
			<!-- contents end -->

		</div>
	</div>



<jsp:include page="../include/footer.jsp" flush="false"></jsp:include>