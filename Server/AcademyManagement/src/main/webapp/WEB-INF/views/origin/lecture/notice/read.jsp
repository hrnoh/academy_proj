<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../../layout/header.jsp" %>


<title>알림장</title>

<div class="container text-center">
		<div class="row content">
			<!-- 좌측 메뉴 -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>${noticeVO.lname }</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				  	<a href="/lecture/list?loginRole=${login.role}&uno=${login.uno}" class="list-group-item">수업 목록</a>
				  	<a href="/lecture/read?lno=${noticeVO.lno }" class="list-group-item">수업 상세</a>
				  	<a href="/lecture/notice/list?lno=${noticeVO.lno }&lname=${noticeVO.lname }" class="list-group-item active">알림장</a>
				    <c:if test="${login.role == '관리자' || login.role == '강사' }">
				    	<a href="/lecture/students/list?lno=${noticeVO.lno }&lname=${noticeVO.lname }" class="list-group-item">수강생</a>
				  	</c:if>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				  <!-- 패널 시작 -->
				  <div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">수업 상세</div>
					
					  <div class="panel-body">
					  <!-- 입력 양식 -->
					  <form class="form-horizontal" id="myForm" method="post">
					  	  <!-- hidden -->
					  	  <input type="hidden" name="nno" value="${noticeVO.nno}">
					  	  <input type="hidden" name="lno" value="${noticeVO.lno}">
					  	  <input type="hidden" name="lname" value="${noticeVO.lname}">
					  	  <input type='hidden' name='page' value="${cri.page}">
						  <input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					  
					  	  <!-- 행1 -->
						  <div class="form-group">
						    <label for="title" class="col-xs-2 control-label">제목:</label>
						    <div class="col-xs-10">
								 <p class="form-control-static">${noticeVO.title }</p>
							</div>
						  </div>
						  
						  <!-- 행2 -->
						  <div class="form-group">
						  	<label for="content" class="col-xs-2 control-label">내용:</label>
						    <div class="col-xs-10">
								 <p class="form-control-static">${noticeVO.content}</p>
							</div>
						  </div>
						  
						  <!-- 행3 -->
						  <div class="form-group">
						  	<label for="content" class="col-xs-2 control-label">작성자:</label>
						    <div class="col-xs-10">
								 <p class="form-control-static">${noticeVO.writer}</p>
							</div>
						  </div>
						  
						  
						  <!-- 등록 버튼(강사, 관리자) -->
						  
						  <div class="form-group">	
							  	<div class="col-xs-offset-8 col-xs-4 text-right">
							  		<c:if test="${login.role == '관리자' || login.role == '강사' }">
									 	<input id="modifyBtn" class="btn btn-default" type="submit" value="수정">
									 	<input id="removeBtn" class="btn btn-default" type="submit" value="삭제">
									 </c:if>
								 	<input id="listBtn" class="btn btn-default" type="button" value="목록">
								</div>
						  </div>
					  
					  </form>  
					  <!-- 입력 양식 끝 -->

					  </div>
					  <!-- 패널 바디 끝 -->
				  
			</div>
		</div>
</div>
</div>
	
<script>
	$(document).ready(function(){
		
		var formObj = $("#myForm");
		
		console.log(formObj);
		
		$("#modifyBtn").on("click", function(){
			formObj.attr("method", "get");
			formObj.attr("action", "/lecture/notice/modify");
			formObj.submit();
		});
		
		$("#removeBtn").on("click", function(){
			formObj.attr("action", "/lecture/notice/remove");
			formObj.submit();
		});
		
		$("#listBtn ").on("click", function(){
			self.location = "/lecture/notice/list?page=${cri.page}" + 
					"&perPageNum=${cri.perPageNum}&lno=${noticeVO.lno}&lname=${noticeVO.lname}";
		});
		
	});
</script>

<%@ include file="../../layout/footer.jsp" %>