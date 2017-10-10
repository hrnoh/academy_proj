<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../../layout/header.jsp" %>


<title>수강생 관리</title>

<div class="container text-center">
		<div class="row content">
			<!-- 좌측 메뉴 -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>${takeCourseVO.lname}</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				  	<a href="/lecture/list" class="list-group-item">수업 목록</a>
				  	<a href="/lecture/read?lno=${takeCourseVO.lno }" class="list-group-item">수업 상세</a>
				  	<a href="/lecture/notice/list?lno=${takeCourseVO.lno }&lname=${takeCourseVO.lname }" class="list-group-item">알림장</a>
				  	<a href="" class="list-group-item active">수강생</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				  <!-- 패널 시작 -->
				  <div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">알림장</div>
					
					  <div class="panel-body">
					  <!-- Table -->
					  <table class="table table-hover col-xs-12">
					    <thead>
							<tr>
								<th>이름</th>
								<th>학년</th>
								<th>성별</th>
							 	<th>휴대폰</th>
							 	<th>이메일</th>
							 	<th>성적</th>
							</tr>
						 </thead>
						 <tbody>
						 	<c:forEach var="takeCourseVO" items="${list}" varStatus="status">
								<tr class='clickable-row' 
								data-href='/lecture/students/read${pageMaker.makeQuery(pageMaker.cri.page)}&lno=${takeCourseVO.lno }&uno=${takeCourseVO.uno}' 
								style="cursor:pointer">
									<td>${takeCourseVO.name}</td>
									<td>${takeCourseVO.grade}</td>
									<td>${takeCourseVO.sex}</td>
									<td>${takeCourseVO.mPhone}</td>
									<td>${takeCourseVO.email}</td>
									<td>${takeCourseVO.score}</td>
								<tr>
							</c:forEach>
						 </tbody>
					  </table>
					  <!-- 테이블 끝 -->
					  
					  <!-- 등록 버튼 -->
					  <div class="row col-xs-12 text-right">
					  	<input id="registBtn" class="btn btn-default" type="button" value="등록">
					  </div>
					  <!-- 등록 버튼 끝 -->
					  </div>
					  <!-- 패널 바디 끝 -->
				  
				  <div id="paging">
						<div class="text-center">
							<ul class="pagination">
			
								<c:if test="${pageMaker.prev}">
									<li><a
										href="list${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>
			
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="list${pageMaker.makeQuery(idx)}">${idx}</a>
									</li>
								</c:forEach>
			
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="list${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if>
			
							</ul>
						</div>
				  </div>
				  
			</div>
		</div>
</div>
</div>
	
	<script>
		var msg = "${msg}";
		
		if(msg == "SUCCESS") {
			alert("처리가 완료되었습니다.");
		}
	
		$(document).ready(function() {

			$(".clickable-row").click(function() {
		        self.location = $(this).data("href");
		    });
			
			$("#registBtn").click(function() {
		        self.location = "/lecture/students/regist?lno=${takeCourseVO.lno}&lname=${takeCourseVO.lname}";
		    });

		});
	</script>

<%@ include file="../../layout/footer.jsp" %>