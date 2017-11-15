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
				  	<a href="/lecture/list?loginRole=${login.role}&uno=${login.uno}" class="list-group-item">수업 목록</a>
				  	<a href="/lecture/read?lno=${takeCourseVO.lno }" class="list-group-item">수업 상세</a>
				  	<a href="/lecture/notice/list?lno=${takeCourseVO.lno }&lname=${takeCourseVO.lname}" class="list-group-item">알림장</a>
				    <a href="/lecture/students/list?lno=${takeCourseVO.lno }&lname=${takeCourseVO.lname }" class="list-group-item active">수강생</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				  <!-- 패널 시작 -->
				  <div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">알림장 수정</div>
					
					  <div class="panel-body">
					  <!-- 입력 양식 -->
					  <form class="form-horizontal" id="myForm" method="post">
					  
					  	  <input type="hidden" name="lno" value="${takeCourseVO.lno }">
					  	  <input type="hidden" name="uno" value="${takeCourseVO.uno }">
					  	  <input type='hidden' name='page' value="${cri.page}"> 
						  <input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					  
					  	  <!-- 행1 -->
						  <div class="form-group">
						    <label for="title" class="col-xs-2 control-label">성적:</label>
						    <div class="col-xs-10">
								 <input type="text" class="form-control" name="score" value="${takeCourseVO.score }">
							</div>
						  </div>
						  
						  <!-- 등록 버튼 -->
						  <div class="form-group">	
						  	<div class="col-xs-offset-9 col-xs-3 text-right">
							 	 <input class="btn btn-primary" type="submit" value="수정">
							 	 <input id="cancelBtn" class="btn btn-default" type="button" value="취소">
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
		$("#cancelBtn ").on("click", function(){
			self.location = "/lecture/students/list?page=${cri.page}&perPageNum=${cri.perPageNum}" + 
					"&lno=${takeCourseVO.lno}&lname=${takeCourseVO.lname}";
		});
		
	});
</script>

<%@ include file="../../layout/footer.jsp" %>