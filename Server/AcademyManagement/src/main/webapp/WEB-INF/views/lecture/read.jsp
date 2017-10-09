<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../layout/header.jsp" %>


<title>학생 관리</title>

<div class="container text-center">
		<div class="row content">
			<!-- 좌측 메뉴 -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>수업</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				  	<a href="/lecture/list" class="list-group-item active">수업 조회</a>
				    <a href="/lecture/regist" class="list-group-item">수업 등록</a>
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
					  <form class="form-horizontal" id="myForm" action="/lecture/regist" method="post">
					  	  <!-- hidden -->
					  	  <input type="hidden" name="lno" value="${lectureVO.lno}">
					  	  <input type='hidden' name='page' value="${cri.page}"> 
						  <input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					  
					  	  <!-- 행1 -->
						  <div class="form-group">
						    <label for="lname" class="col-xs-2 control-label">강의명:</label>
						    <div class="col-xs-4">
								 <p class="form-control-static">${lectureVO.lname }</p>
							</div>
							
							<label for="teacher" class="col-xs-1 control-label">강사:</label>
						    <div class="col-xs-4">
								 <p class="form-control-static">${lectureVO.teacher}</p>
							</div>
						  </div>
						  
						  <!-- 행2 -->
						  <div class="form-group">
						  	<label for="room" class="col-xs-2 control-label">강의실:</label>
						    <div class="col-xs-2">
								 <p class="form-control-static">${lectureVO.room}</p>
							</div>
						  
						    <label for="personnel" class="col-xs-1 control-label">정원:</label>
						    <div class="col-xs-2">
								 <p class="form-control-static">${lectureVO.personnel}</p>
							</div>
							
							<label for="target" class="col-xs-2 control-label">대상학년:</label>
						    <div class="col-xs-2">
								 <p class="form-control-static">${lectureVO.target}</p>
							</div>
						  </div>
						  
						  <!-- 행3 -->
						  <div class="form-group">
						    <label for="day" class="col-xs-2 control-label">요일:</label>
							 <div class="col-xs-2">
							 	 <p class="form-control-static">${lectureVO.day}</p>
							 </div>
							 <label for="startTime" class="col-xs-2 control-label">시간:</label>
							 <div class="col-xs-5">
							 	 <p class="form-control-static">${lectureVO.startTime}~${lectureVO.endTime}</p>
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
		</div>
</div>
	
<script>
	$(document).ready(function(){
		
		var formObj = $("#myForm");
		
		console.log(formObj);
		
		$("#modifyBtn").on("click", function(){
			formObj.attr("method", "get");
			formObj.attr("action", "/lecture/modify");
			formObj.submit();
		});
		
		$("#removeBtn").on("click", function(){
			formObj.attr("action", "/lecture/remove");
			formObj.submit();
		});
		
		$("#listBtn ").on("click", function(){
			self.location = "/lecture/list?page=${cri.page}&perPageNum=${cri.perPageNum}";
		});
		
	});
</script>

<%@ include file="../layout/footer.jsp" %>