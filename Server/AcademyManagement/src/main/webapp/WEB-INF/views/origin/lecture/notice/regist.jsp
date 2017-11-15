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
				    <a href="/lecture/students/list?lno=${noticeVO.lno }&lname=${noticeVO.lname }" class="list-group-item">수강생</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				  <!-- 패널 시작 -->
				  <div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">알림장 등록</div>
					
					  <div class="panel-body">
					  <!-- 입력 양식 -->
					  <form class="form-horizontal" id="myForm" action="/lecture/notice/regist" method="post">
					  
					  	  <input type="hidden" name="lname" value="${noticeVO.lname }">
					  	  <input type="hidden" name="lno" value="${noticeVO.lno }">
					  	  <input type="hidden" name="uno" value="${login.uno }">
					  
					  	  <!-- 행1 -->
						  <div class="form-group">
						    <label for="title" class="col-xs-2 control-label">제목:</label>
						    <div class="col-xs-10">
								 <input type="text" class="form-control" name="title">
							</div>
						  </div>
						  
						  <!-- 행2 -->
						  <div class="form-group">
						  	<label for="content" class="col-xs-2 control-label">내용:</label>
						    <div class="col-xs-10">
								 <textarea class="form-control" rows="10" name="content"></textarea>
							</div>
						  </div>
						  
						  <!-- 등록 버튼 -->
						  <div class="form-group">	
						  	<div class="col-xs-offset-9 col-xs-3 text-right">
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
</div>
	
<script>
	$(document).ready(function(){
		$("#listBtn ").on("click", function(){
			self.location = "/lecture/notice/list?lno=${noticeVO.lno}&lname=${noticeVO.lname}";
		});
		
	});
</script>

<%@ include file="../../layout/footer.jsp" %>