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
				    <a href="/user/student" class="list-group-item active">학생/학부모</a>
				  	<a href="/user/teacher" class="list-group-item">강사</a>
				  	<a href="/user/manager" class="list-group-item">관리자</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				<div class="panel panel-default">
				  <div class="panel-heading">
				  	<b>학생 정보</b>
				  </div>
				  
				  <!-- 패널 바디 -->
				  <div class="panel-body">
				  	
				  	<!-- 상세 정보 -->
				  	<form class="form-horizontal">
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
					  	<c:if test="${userVO.role eq '학생' }">
					    <label for="grade" class="col-xs-2 control-label">학년 : </label>
					    <div class="col-xs-2">
					    	<input type="input" class="form-control" name="grade" id="garde" value="${userVO.grade }">
					    </div>
					    </c:if>
					    
					    <label for="age" class="col-xs-2 control-label">나이 : </label>
					    <div class="col-xs-2">
					    	<input type="input" class="form-control" name="age" id="age" value="${userVO.age }">
					    </div>
					    
					    <label for="sex1" class="col-xs-1 control-label">성 : </label>
					    <div class="col-xs-3">
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
					    	<input type="input" class="form-control" name="id" id="id" value="${userVO.id }">
					    </div>
					    
					    <label for="pwd" class="col-xs-2 control-label">비밀번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" name="pwd" id="pwd" value="${userVO.pwd }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="phone" class="col-xs-2 control-label">전화번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" name="phone" id="phone" value="${userVO.phone }">
					    </div>
					    
					    <label for="mPhone" class="col-xs-2 control-label">휴대폰 번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" name="mPhone" id="mPhone" value="${userVO.mPhone }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="email" class="col-xs-2 control-label">이메일 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" name="email" id="email" value="${userVO.email }">
					    </div>
					    
					    <label for="address" class="col-xs-2 control-label">주소 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" name="address" id="address" value="${userVO.address }">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="regDate" class="col-xs-2 control-label">등록일 : </label>
					    <div class="col-xs-4">
					    	<p class="form-control-static">
					    		<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${userVO.regDate}" />
					    	</p>
					    </div>
					    
					    
					    <c:if test="${userVO.role eq '학생'}">
					    <label for="status" class="col-xs-2 control-label">상태 : </label>
					    <div class="col-xs-4">
					    	<select class="form-control">
							  <option <c:out value="${userVO.status eq '수강'? 'selected':'' }"/>>수강</option>
							  <option <c:out value="${userVO.status eq '휴원'? 'selected':'' }"/>>휴원</option>
							  <option <c:out value="${userVO.status eq '퇴원'? 'selected':'' }"/>>퇴원</option>
							</select>
					    </div>
					    </c:if>
					  </div>

					  <c:if test="${userVO.role eq '학생' }">
					  <div class="form-group">
					  	<label class="col-xs-2 control-label">학부모</label>
					  </div>
					  <div class="row">
						  <div style="width:95%;overflow:auto; height:100px; margin-top:10px; padding-left:10%;">
							<table class="table table-hover" style="width:100%;">							    
							    <c:forEach items="${parents}" var="userVO">
								<tr>
									<td width="10%">${userVO.relation }</td>
							     	<td width="20%">${userVO.name }</td>
							       	<td width="10%">${userVO.age }</td>
							       	<td width="10%">${userVO.sex }</td>
							       	<td width="20%">${userVO.mPhone }</td>
							       	<td width="30%">${userVO.email }</td>
								</tr>
								</c:forEach>
							</table>
						  </div>
					  </div>	
					  </c:if>				  
					</form>
				  	<!-- 상세 정보 끝 -->
				  	
					<hr/>
					<div class="row">
						<div class="col-xs-push-8 col-xs-4 text-right">
						 	<input class="btn btn-default" type="button" value="수정">
						 	<input class="btn btn-default" type="button" value="삭제">
						 	<input class="btn btn-default" type="button" value="목록">
						 </div>
					</div>
					
				  </div>
				  <!-- 패널 바디 끝 -->
				  
				</div>
			</div>
		</div>
	</div>

<%@ include file="../../layout/footer.jsp" %>