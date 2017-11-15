<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../../layout/header.jsp" %>


<title>상세 정보</title>

<div class="container text-center">
		<div class="row content">
			<!-- 좌측 메뉴 -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>계정 관리</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				  <c:choose>
				  	<c:when test="${login.role == '관리자' }">
				  		<a href="/user/student" class="list-group-item">학생/학부모</a>
					  	<a href="/user/teacher" class="list-group-item active">강사</a>
					  	<a href="/user/manager" class="list-group-item ">관리자</a>
				  	</c:when>
				  	
					<c:when test="${login.role == '강사' }">
				  		<a href="/user/student" class="list-group-item">학생/학부모</a>
					  	<a href="/user/teacher/detail?uno=${login.uno }" class="list-group-item active">강사</a>
				  	</c:when>
				  	
				  	<c:otherwise>
				  		<a href="" class="list-group-item">학생/학부모</a>
				  	</c:otherwise>
				  </c:choose>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				<div class="panel panel-default">
				  <div class="panel-heading">
				  	<b>강사 정보</b>
				  </div>
				  
				  <!-- 패널 바디 -->
				  <div class="panel-body">
				  	
				  	<!-- 상세 정보 -->
				  	<form id="myForm" class="form-horizontal" action="/user/teacher/modify" method="post">
				  	
				  		<input type="hidden" name="uno" value="${uno }">
				  	
					  <div class="form-group">
					    <label for="role" class="col-xs-2 control-label">구분 : </label>
					    <div class="col-xs-4">
					    	<select class="form-control" name="role" id="role">
							  <option value="학생" <c:out value="${userVO.role eq '학생'? 'selected':'' }"/>>학생</option>
							  <option value="학부모" <c:out value="${userVO.role eq '학부모'? 'selected':'' }"/>>학부모</option>
							  <option value="강사" <c:out value="${userVO.role eq '강사'? 'selected':'' }"/>>강사</option>
							</select>
					    </div>
					    
					    <label for="name" class="col-xs-2 control-label">이름 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" name="name" id="name" value="${userVO.name }">
					    </div>
					  </div>
					  
					  <div class="form-group">	    
					    <label for="age" class="col-xs-2 control-label">나이 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" name="age" id="age" value="${userVO.age }">
					    </div>
					    
					    <label for="name" class="col-xs-2 control-label">성 : </label>
					    <div class="col-xs-4">
						   	<label class="radio-inline">
							  <input type="radio" name="sex" id="sex1" value="남" 
							  	<c:out value="${userVO.sex eq '남'? 'checked':'' }"/>> 남자
							</label>
							<label class="radio-inline">
							  <input type="radio" name="sex" id="sex2" value="여"
							    <c:out value="${userVO.sex eq '여'? 'checked':'' }"/>> 여자
							</label>
						</div>
					  </div>
					  
					  <div class="form-group">
					    <label for="id" class="col-xs-2 control-label">아이디 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="id" value="${userVO.id }">
					    </div>
					    
					    <label for="pwd" class="col-xs-2 control-label">비밀번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="pwd" value="${userVO.pwd }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="phone" class="col-xs-2 control-label">전화번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="phone" value="${userVO.phone }">
					    </div>
					    
					    <label for="mPhone" class="col-xs-2 control-label">휴대폰 번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="mPhone" value="${userVO.mPhone }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="phone" class="col-xs-2 control-label">이메일 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="phone" value="${userVO.email }">
					    </div>
					    
					    <label for="mPhone" class="col-xs-2 control-label">주소 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="mPhone" value="${userVO.address }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="phone" class="col-xs-2 control-label">등록일 : </label>
					    <div class="col-xs-4">
					    	<p class="form-control-static">${userVO.regDate }</p>
					    </div>
					  </div>		  
					
				  	
					<hr/>
					<div class="row">
						<div class="col-xs-push-8 col-xs-4 text-right">
						 	<input class="btn btn-default" type="submit" value="수정">
						 	<c:if test="${login.role != '강사' }">
						 	<input id="removeBtn" class="btn btn-default" type="button" value="삭제">
						 	<input id="listBtn" class="btn btn-default" type="button" value="목록">
						 	</c:if>
						 </div>
					</div>
					</form>
				  	<!-- 상세 정보 끝 -->
					
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
			
			
			$("#removeBtn").on("click", function(){
				formObj.attr("action", "/user/teacher/remove");
				formObj.submit();
			});
			
			$("#listBtn ").on("click", function(){
				formObj.attr("method", "get");
				formObj.attr("action", "/user/teacher");
				formObj.submit();
			});
			
		});
	</script>

<%@ include file="../../layout/footer.jsp" %>