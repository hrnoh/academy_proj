<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../layout/header.jsp" %>


<title>수업 관리</title>

<div class="container text-center">
		<div class="row content">
			<!-- 좌측 메뉴 -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>수업</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				  	<a href="" class="list-group-item active">수업 조회</a>
				  	<!-- 수업 등록(강사, 관리자) -->
				  	<c:if test="${login.role == '강사' || login.role == '관리자' }">
					    <a href="/lecture/regist" class="list-group-item">수업 등록</a>
					</c:if>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				  <!-- 패널 시작 -->
				  <div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">수업 목록</div>
					
					  <div class="panel-body">
					  <!-- Table -->
					  <table class="table table-hover col-xs-12">
					    <thead>
							<tr>
								<th>강의명</th>
								<th>강사</th>
								<th>요일</th>
							 	<th>시간</th>
							 	<th>정원</th>
							 	<th>강의실</th>
							</tr>
						 </thead>
						 <tbody>
						 	<c:forEach var="lectureVO" items="${list}" varStatus="status">
								<tr class='clickable-row' data-href='/lecture/read?lno=${lectureVO.lno }&page=${pageMaker.cri.page}&perPageNum=${pageMaker.cri.perPageNum}' style="cursor:pointer">
									<td>${lectureVO.lname}</td>
									<td>${lectureVO.teacher}</td>
									<td>${lectureVO.day}</td>
									<td>${lectureVO.startTime} ~ ${lectureVO.endTime}</td>
									<td>${lectureVO.personnel}</td>
									<td>${lectureVO.room}</td>
								<tr>
							</c:forEach>
						 </tbody>
					  </table>
					  <!-- 테이블 끝 -->
					  
					  <!-- 등록 버튼 (강사, 관리자) -->
					  <c:if test="${login.role == '강사' || login.role == '관리자' }">
						  <div class="row col-xs-12 text-right">
						  	<input id="registBtn" class="btn btn-default" type="button" value="등록">
						  </div>
						  <!-- 등록 버튼 끝 -->
					  </c:if>
					  </div>
					  <!-- 패널 바디 끝 -->
				  
				  <div id="paging">
						<div class="text-center">
							<ul class="pagination">
			
								<c:if test="${pageMaker.prev}">
									<li><a
										href="list${pageMaker.makeQuery(pageMaker.startPage - 1) }&loginRole=${login.role}&uno=${login.uno}">&laquo;</a></li>
								</c:if>
			
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="list${pageMaker.makeQuery(idx)}&loginRole=${login.role}&uno=${login.uno}">${idx}</a>
									</li>
								</c:forEach>
			
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="list${pageMaker.makeQuery(pageMaker.endPage +1) }&loginRole=${login.role}&uno=${login.uno}">&raquo;</a></li>
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
		        window.location = $(this).data("href");
		    });
			
			$("#registBtn").click(function() {
		        self.location = "/lecture/regist";
		    });

		});
	</script>

<%@ include file="../layout/footer.jsp" %>