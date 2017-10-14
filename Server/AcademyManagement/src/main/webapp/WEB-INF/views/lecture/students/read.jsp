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
				  <div class="panel-heading"><b>${takeCourseVO.lname }</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				  	<a href="/lecture/list" class="list-group-item">수업 목록</a>
				  	<a href="/lecture/read?lno=${takeCourseVO.lno }" class="list-group-item">수업 상세</a>
				  	<a href="/lecture/notice/list?lno=${takeCourseVO.lno }&lname=${takeCourseVO.lname }" class="list-group-item">알림장</a>
				    <a href="/lecture/students/list?lno=${takeCourseVO.lno }&lname=${takeCourseVO.lname }" class="list-group-item active">수강생</a>
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
					  	  <input type="hidden" name="uno" value="${takeCourseVO.uno}">
					  	  <input type="hidden" name="lno" value="${takeCourseVO.lno}">
					  	  <input type="hidden" name="lname" value="${takeCourseVO.lname}">
					  	  <input type='hidden' name='page' value="${cri.page}">
						  <input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					  
					  	  <!-- 행1 -->
						  <div class="form-group">
						    <label for="title" class="col-xs-2 control-label">학생명:</label>
						    <div class="col-xs-10">
								 <p class="form-control-static">${takeCourseVO.name }</p>
							</div>
						  </div>
						  
						  <!-- 행2 -->
						  <div class="form-group">
						  	<label for="content" class="col-xs-2 control-label">성적:</label>
						    <div class="col-xs-10">
								 <p class="form-control-static">${takeCourseVO.score}</p>
							</div>
						  </div>		  
						  
						  <!-- 등록 버튼 -->
						  <div class="form-group">	
						  	<div class="col-xs-offset-8 col-xs-4 text-right">
							 	 <input id="modifyBtn" class="btn btn-default" type="submit" value="수정">
							 	 <input id="removeBtn" class="btn btn-default" type="submit" value="삭제">
							 	 <input id="listBtn" class="btn btn-default" type="button" value="목록">
							 </div>
						  </div>
					  
					  </form>  
					  <!-- 입력 양식 끝 -->
					  
					</div>
				<!-- 패널 바디 끝 -->
				</div>
				
				<!-- 출석 자리 -->
				<%@include file="../attendance/list.jsp" %>
		</div>
</div>
</div>
	
<script>
	var msg = "${msg}";
	
	if(msg == "SUCCESS") {
		alert("처리가 완료되었습니다.");
	}

	$(document).ready(function(){
		
		var formObj = $("#myForm");
		
		console.log(formObj);
		
		$("#modifyBtn").on("click", function(){
			formObj.attr("method", "get");
			formObj.attr("action", "/lecture/students/modify");
			formObj.submit();
		});
		
		$("#removeBtn").on("click", function(){
			formObj.attr("action", "/lecture/students/remove");
			formObj.submit();
		});
		
		$("#listBtn ").on("click", function(){
			self.location = "/lecture/students/list?page=${cri.page}" + 
					"&perPageNum=${cri.perPageNum}&lno=${takeCourseVO.lno}&lname=${takeCourseVO.lname}";
		});
		
	});
</script>

<%@ include file="../../layout/footer.jsp" %>