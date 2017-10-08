<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<%@ include file="../../layout/header.jsp" %>

<title>강사 관리</title>

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
				  	<a href="#" class="list-group-item active">강사</a>
				  	<a href="/user/manager" class="list-group-item">관리자</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				<div class="panel panel-default">
				  <div class="panel-heading">
				  	<b>강사 목록</b>
				  </div>
				  
				  <!-- 패널 바디 -->
				  <div class="panel-body">
				  	<!-- 테이블 -->
				  	<div class="tbl-header" style="width:100%">
						<table class="table" style="width:100%; margin-bottom:0px;">
						<thead>
							<tr>
								<th width="10%">구분</th>
							 	<th width="10%">이름</th>
							  	<th width="10%">나이</th>
							  	<th width="10%">성별</th>
							  	<th width="20%">전화번호</th>
							  	<th width="20%">이메일</th>
							  	<th width="20%"><center>상세보기</center></th>
							</tr>
						 </thead>
						</table>
					</div>
					<div style="width:100%;overflow:auto; height:300px; margin-top:0px;">
						<table class="table table-hover" style="width:100%;">
						    <c:forEach items="${list}" var="userVO">
							<tr>
								<td width="10%">${userVO.role }</td>
						     	<td width="10%">${userVO.name }</td>
						       	<td width="10%">${userVO.age }</td>
						       	<td width="10%">${userVO.sex }</td>
						       	<td width="20%">${userVO.mPhone }</td>
						       	<td width="20%">${userVO.email }</td>
						       	<td width="20%" align="center">
						       		<a href="/user/teacher/detail?uno=${userVO.uno}"><span class="glyphicon glyphicon-pencil"></span></a>
						       	</td>
							</tr>
							</c:forEach>
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
					self.location = "/user/teacher/regist"
				});

			});
	</script>

<%@ include file="../../layout/footer.jsp" %>