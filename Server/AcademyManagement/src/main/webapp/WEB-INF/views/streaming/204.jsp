<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../include/header.jsp" flush="false"></jsp:include>

<title>관리자 정보 수정</title>

<div class="container text-center">
		<div class="row content">
			<!-- snb -->
			<div class="col-xs-2">
				<div class="panel panel-default">
				  <!-- Default panel contents -->
				  <div class="panel-heading"><b>강의실 스트리밍</b></div>
				
				  <!-- List group -->
				  <div class="list-group">
				    <a href="/streaming/201" class="list-group-item">201호</a>
				  	<a href="/streaming/202" class="list-group-item">202호</a>
				  	<a href="/streaming/203" class="list-group-item">203호</a>
				  	<a href="#" class="list-group-item active">204호</a>
				  </div>
				</div>
			</div> 
			<!-- /snb -->
			
			<!-- content -->
			<div class="col-xs-10 text-left">
				<!-- panel -->
				<div class="panel panel-default">
					<!-- panel-heading -->
					<div class="panel-heading">
				  		<b>204호</b>
					</div> <!-- /panel-heading -->
					<!-- panel-body -->
					<div class="panel-body text-center">
				  	
				  		<iframe src="http://172.30.1.36:8080/stream" scrolling="no" width="660" height="500" frameborder="0"></iframe>
					
					</div> <!-- /panel-body -->
				  
				</div> <!-- /panel -->
			</div> <!-- /content -->
		</div>
	</div>

<jsp:include page="../include/footer.jsp" flush="false"></jsp:include>