<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>


<title>학생 관리</title>

<div class="container text-center">
		<div class="row content">
			<!-- 좌측 메뉴 -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>계정 관리</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				    <a href="" class="list-group-item active">학생/학부모</a>
				  	<a href="/user/teacher" class="list-group-item">강사</a>
				  	<a href="/user/manager" class="list-group-item">관리자</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				<div class="panel panel-default">
				  <div class="panel-heading">
				  	<b>학생/학부모 목록</b>
				  </div>
				  
				  <!-- 패널 바디 -->
				  <div class="panel-body">
				  	<!-- 테이블 -->
				  	<div class="tbl-header" style="width:100%">
						<table class="table" style="width:100%; margin-bottom:0px;">
						<thead>
							<tr>
								<th width="10%">구분</th>
								<th width="10%">학년</th>
							 	<th width="10%">이름</th>
							  	<th width="10%">나이</th>
							  	<th width="10%">성별</th>
							  	<th width="20%">전화번호</th>
							  	<th width="15%">이메일</th>
							  	<th width="15%">상세보기</th>
							</tr>
						 </thead>
						</table>
					</div>
					<div style="width:100%;overflow:auto; height:300px; margin-top:0px;">
						<table class="table table-hover" style="width:100%;">
							<tr>
								<td width="10%">학생</td>
						     	<td width="10%">4</td>
						       	<td width="10%">노형래</td>
						       	<td width="10%">22</td>
						       	<td width="10%">남</td>
						       	<td width="20%">010-8281-9331</td>
						       	<td width="15%">hrnoh24@gmail.com</td>
						       	<td width="15%" align="center">
						       		<a href="/user/student/detail"><span class="glyphicon glyphicon-pencil"></span></a>
						       	</td>
						    </tr>
						</table>
					</div>
					<!-- 테이블 끝 -->
					
					<div class="row col-xs-12">
						<div class="col-xs-push-11 col-xs-1">
						 	<input id="registBtn" class="btn btn-default" type="button" value="등록">
						 </div>
					</div>
					
					<div class="row col-xs-12">
						<div class="col-xs-offset-3 col-xs-6">
						    <div class="input-group">
						      <div class="input-group-btn">
						        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">---- <span class="caret"></span></button>
						        <ul class="dropdown-menu" role="menu">
						          <li><a href="#">구분</a></li>
						          <li><a href="#">이름</a></li>
						          <li><a href="#">전화번호</a></li>
						        </ul>
						      </div><!-- /btn-group -->
						      <input type="text" class="form-control" aria-label="...">
						      <span class="input-group-btn">
						        <button class="btn btn-default" type="button">검색</button>
						      </span>
						    </div><!-- /input-group -->
						 </div><!-- /.col-xs-6 -->
					</div>
					
				  </div>
				  <!-- 패널 바디 끝 -->
				  
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$(document).ready(
			
			function() {

				$('#registBtn').on("click", function(event) {
					self.location = "/user/student/regist"
				});

			});
	</script>

<%@ include file="../../layout/footer.jsp" %>