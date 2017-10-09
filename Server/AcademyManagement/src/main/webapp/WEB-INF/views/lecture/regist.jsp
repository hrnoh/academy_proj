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
				  	<a href="/lecture/list" class="list-group-item">수업 조회</a>
				    <a href="" class="list-group-item active">수업 등록</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				  <!-- 패널 시작 -->
				  <div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">수업 등록</div>
					
					  <div class="panel-body">
					  <!-- 입력 양식 -->
					  <form class="form-horizontal" id="myForm" action="/lecture/regist" method="post">
					  
					  	  <!-- 행1 -->
						  <div class="form-group">
						    <label for="lname" class="col-xs-2 control-label">강의명:</label>
						    <div class="col-xs-4">
								 <input type="text" class="form-control" name="lname">
							</div>
							
							<label for="teacher" class="col-xs-1 control-label">강사:</label>
						    <div class="col-xs-4">
								 <input type="text" class="form-control" name="teacher">
							</div>
						  </div>
						  
						  <!-- 행2 -->
						  <div class="form-group">
						  	<label for="room" class="col-xs-2 control-label">강의실:</label>
						    <div class="col-xs-2">
								 <input type="text" class="form-control" name="room">
							</div>
						  
						    <label for="personnel" class="col-xs-1 control-label">정원:</label>
						    <div class="col-xs-2">
								 <input type="text" class="form-control" name="personnel">
							</div>
							
							<label for="target" class="col-xs-2 control-label">대상학년:</label>
						    <div class="col-xs-2">
								 <input type="text" class="form-control" name="target">
							</div>
						  </div>
						  
						  <!-- 행3 -->
						  <div class="form-group">
						    <label for="day" class="col-xs-2 control-label">요일:</label>
							 <div class="col-xs-2">
							 	 <select class="form-control" name="day" multiple>
									  <option value="월">월</option>
									  <option value="화">화</option>
									  <option value="수">수</option>
									  <option value="목">목</option>
									  <option value="금">금</option>
								 </select>
							 </div>
							 <label for="startTime" class="col-xs-2 control-label">시간:</label>
							 <div class="col-xs-2">
							 	 <input type="text" class="form-control" name="startTime">
							 </div>
							 <div class="col-xs-1 text-center">
							 	 <p><b>~</b></p>
							 </div>
							 <div class="col-xs-2">
							 	 <input type="text" class="form-control" name="endTime">
							 </div>
						  </div>
						  
						  <!-- 등록 버튼 -->
						  <div class="form-group">	
						  	<div class="col-xs-offset-9 col-xs-3">
							 	 <input class="btn btn-primary" type="submit" value="등록">
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
		$("#listBtn ").on("click", function(){
			self.location = "/lecture/list";
		});
		
	});
</script>

<%@ include file="../layout/footer.jsp" %>