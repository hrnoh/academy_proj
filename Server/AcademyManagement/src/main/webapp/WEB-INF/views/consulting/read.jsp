<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../layout/header.jsp"%>


<title>상담 신청 내역</title>

<div class="container text-center">
	<div class="row content">

		<!-- 좌측 메뉴 -->
		<div class="col-xs-2">
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<b>상담</b>
				</div>

				<!-- List group -->
				<div class="list-group">
					<c:choose>
						<c:when test="${login.role == '학생' }">
							<a class="list-group-item active" href="/consulting/list?searchType=client&keyword=${login.name }">신청 내역 조회</a>
						</c:when>
						<c:when test="${login.role == '강사' }">
							<a class="list-group-item active" href="/consulting/list?searchType=counselor&keyword=${login.name }">신청 내역 조회</a>
						</c:when>
					</c:choose>
					<a href="/consulting/regist" class="list-group-item">상담 등록</a>
				</div>
			</div>
		</div>
		<!-- 좌측 메뉴 끝 -->

		<!-- 내용 -->
		<div class="col-xs-10 text-left">
			<!-- 패널 시작 -->
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<b>상담 신청</b>
				</div>

				<div class="panel-body">
					<!-- 입력 양식 -->
					<form class="form-horizontal" id="myForm" action="/consulting/modify" method="post">
						
						<input type='hidden' name='cno' value="${consultingVO.cno}"> 
						<input type='hidden' name='page' value="${cri.page}"> 
						<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input type='hidden' name='searchType' value="${cri.searchType}">
						<input type='hidden' name='keyword' value="${cri.keyword}">
						<input type='hidden' name='loginRole' value="${login.role}">
						
						<!-- 행1 -->
						<div class="form-group">
							<label for="" class="col-xs-3 control-label">신청자:</label>
							<div class="col-xs-3">
								<p class="form-control-static">${consultingVO.client }</p>
							</div>

							<label for="" class="col-xs-2 control-label">상담자:</label>
							<div class="col-xs-3">
								<p class="form-control-static">${consultingVO.counselor }</p>
							</div>
						</div>

						<!-- 행2 -->
						<div class="form-group">
							<label for="" class="col-xs-3 control-label">상담 내용:</label>
							<div class="col-xs-8">
								<p class="form-control-static">${consultingVO.content}</p>
							</div>
						</div>

						<!-- 행3 -->
						<div class="form-group">
							<label for="" class="col-xs-3 control-label">상태: </label>
							<div class="col-xs-3">
								<p class="form-control-static">${consultingVO.status }</p>
							</div>

							<label for="" class="col-xs-2 control-label">일시: </label>
							<div class="col-xs-4">
								<p class="form-control-static">${consultingVO.consultingDate }</p>
							</div>
						</div>

						<!-- 등록 버튼 -->
						<div class="form-group">
							<div class="col-xs-11 text-right">
								<input id="modifyBtn" class="btn btn-default" type="button" value="수정"> 
								<input id="removeBtn" class="btn btn-default" type="button" 
								value=<c:out value="${login.role=='강사'? '거절':'삭제' }"/>> 
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
	$(document).ready(function() {
		
		var formObj = $("#myForm");
		
		$("#listBtn").on("click", function(e) {
			formObj.attr("method", "get");
			formObj.attr("action", "/consulting/list");
			formObj.submit();
		});
		
		$("#modifyBtn").on("click", function(e) {
			formObj.attr("method", "get");
			formObj.attr("action", "/consulting/modify");
			formObj.submit();
		});
		
		$("#removeBtn").on("click", function(e) {
			formObj.attr("method", "post");
			formObj.attr("action", "/consulting/remove");
			formObj.submit();
		});
		
	});
</script>


<%@ include file="../layout/footer.jsp"%>