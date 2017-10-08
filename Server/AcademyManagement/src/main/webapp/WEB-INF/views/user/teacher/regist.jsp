<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>


<title>강사 등록</title>

<div class="container text-center">
		<div class="row content">
			<!-- 좌측 메뉴 -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>계정 관리</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				    <a href="/user/student" class="list-group-item">학생/학부모</a>
				  	<a href="/user/teacher" class="list-group-item active">강사</a>
				  	<a href="/user/manager" class="list-group-item">관리자</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				<div class="panel panel-default">
				  <div class="panel-heading">
				  	<b>학생 등록</b>
				  </div>
				  
				  <!-- 패널 바디 -->
				  <div class="panel-body">
				  	
				  	<!-- 상세 정보 -->
				  	<form class="form-horizontal">
					  <div class="form-group">
					    <label for="role" class="col-xs-2 control-label">구분 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="role" value="강사" disabled>
					    </div>
					    
					    <label for="name" class="col-xs-2 control-label">이름 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="name" placeholder="이름을 입력하세요">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="name" class="col-xs-2 control-label">나이:</label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="name" placeholder="나이를 입력하세요">
					    </div>
					    
					    <label for="name" class="col-xs-2 control-label">성 : </label>
					    <div class="col-xs-4">
						   	<label class="radio-inline">
							  <input type="radio" name="sex" id="sex1" value="남"> 남자
							</label>
							<label class="radio-inline">
							  <input type="radio" name="sex" id="sex2" value="여"> 여자
							</label>
						</div>
					  </div>
					  
					  <div class="form-group">
					    <label for="id" class="col-xs-2 control-label">아이디 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="id" placeholder="아이디를 입력하세요">
					    </div>
					    
					    <label for="pwd" class="col-xs-2 control-label">비밀번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="phone" class="col-xs-2 control-label">전화번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="phone" placeholder="전화번호를 입력하세요">
					    </div>
					    
					    <label for="mPhone" class="col-xs-2 control-label">휴대폰 번호 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="mPhone" placeholder="휴대폰 번호를 입력하세요">
					    </div>
					  </div>
					  
					  <div class="form-group">
					    <label for="phone" class="col-xs-2 control-label">이메일 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="phone" placeholder="이메일을 입력하세요">
					    </div>
					    
					    <label for="mPhone" class="col-xs-2 control-label">주소 : </label>
					    <div class="col-xs-4">
					    	<input type="input" class="form-control" id="mPhone" placeholder="주소를 입력하세요">
					    </div>
					  </div>
					  		  
				  	
					<hr/>
					<div class="row">
						<div class="col-xs-push-9 col-xs-3 text-right">
						 	<input class="btn btn-default" type="button" value="등록">
						 	<input class="btn btn-default" type="button" value="목록">
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

<%@ include file="../../layout/footer.jsp" %>