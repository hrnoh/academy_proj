<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../layout/header.jsp"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


<title>상담 등록</title>

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
							<a class="list-group-item" href="/consulting/list?searchType=client&keyword=${login.name }">신청 내역 조회</a>
						</c:when>
						<c:when test="${login.role == '강사' }">
							<a class="list-group-item" href="/consulting/list?searchType=counselor&keyword=${login.name }">신청 내역 조회</a>
						</c:when>
					</c:choose>
					<a href="" class="list-group-item active">상담 등록</a>
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
					<b>상담 등록</b>
				</div>

				<div class="panel-body">
					<!-- 입력 양식 -->
					<form class="form-horizontal" id="consultingForm" action="/consulting/regist" method="post">
						<input type="hidden" name="loginRole" value="${login.role }">
					
						<!-- 행1 -->
						<div class="form-group">
							
							<label for="client" class="control-label col-xs-2">신청자:</label>
							<div class="col-xs-10 form-inline">
								<!-- 상담자 -->
								<c:choose>
									<c:when test="${login.role == '학생' }">
										<input type="hidden" id="clientNum" name="clientNum" value="${login.uno }">
										<input type="hidden" name="client" value="${login.name }">
										<input type="text" class="form-control" id="client" value="${login.name }" disabled>
										<button type="button" class="btn btn-default active" data-toggle="modal" data-target="#findStudentModal" data-backdrop="static" disabled>검색</button>
									</c:when>
									<c:otherwise>
										<input type="hidden" id="clientNum" name="clientNum" value="">
										<input type="text" class="form-control" id="client" name="client" value="" disabled>
										<button type="button" class="btn btn-default" data-toggle="modal" data-target="#findStudentModal" data-backdrop="static">검색</button>
									</c:otherwise>
								</c:choose>
								
								<label for="" class="control-label">상담자:</label>
								<c:choose>
									<c:when test="${login.role == '강사' }">
										<input type="hidden" id="counselorNum" name="counselorNum" value="${login.uno }">
										<input type="text" class="form-control" id="counselor" name="counselor" value="${login.name }" disabled>
										<button type="button" class="btn btn-default active" data-toggle="modal" data-target="#findTeacherModal" data-backdrop="static" disabled>검색</button>
									</c:when>
									<c:otherwise>
										<input type="hidden" id="counselorNum" name="counselorNum" value="">
										<input type="text" class="form-control" id="counselor" name="counselor" value="" disabled>
										<button type="button" class="btn btn-default" data-toggle="modal" data-target="#findTeacherModal" data-backdrop="static">검색</button>
									</c:otherwise>
								</c:choose>
								
							</div>
						</div>

						<!-- 행2 -->
						<div class="form-group">
							<label for="" class="col-xs-2 control-label">상담 내용:</label>
							<div class="col-xs-9">
								<input type="text" class="form-control" id="" name="content">
							</div>
						</div>

						<!-- 행3 -->
						<div class="form-group">
							<label for="" class="col-xs-2 control-label">상태: </label>
							<div class="col-xs-4">
								<select class="form-control" name="status">
									<option value="신청" selected>신청</option>
									<option value="완료">완료</option>
								</select>
							</div>


							<label for="" class="col-xs-2 control-label">일시: </label>
							<div class="col-xs-3">
								<input type="date" class="form-control" id="" name="consultingDate" value="">
							</div>
						</div>


						<!-- 등록 버튼 -->
						<div class="form-group">
							<div class="col-xs-11 text-right">
								<input id="" class="btn btn-primary" type="submit" value="등록">
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

<!-- 학생 조회 모달 -->
<!-- Modal -->
<div class="modal fade" id="findStudentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">학생 검색</h4>
      </div>
      <div class="modal-body">
        <form class="form-inline text-center">
			  <div class="form-group">
			    <label for="studentName">이름:</label>
			    <input type="text" class="form-control" name="name" id="studentName" placeholder="이름을 입력하세요" autocomplete="off">
			  	<button id="studentSearchBtn" class="btn btn-default">검색</button>
			  </div>
			  
			  <hr>
			  <div class="form-group">
			  <div class="panel panel-default">
				  <!-- 패널 바디 -->
				  <div class="panel-body">
				  	<!-- 테이블 -->
				  	<div class="tbl-header" style="width:100%">
						<table class="table" style="width:100%; margin-bottom:0px;">
						<thead>
							<tr>
								<th width="10%">학년</th>
							 	<th width="20%">이름</th>
							  	<th width="10%">성별</th>
							  	<th width="40%">전화번호</th>
							  	<th width="20%">선택</th>
							</tr>
						 </thead>
						</table>
					</div>
					<div style="width:100%;overflow:auto; height:300px; margin-top:0px;">
						<table id="studentsList" class="table table-hover" style="width:100%;">
						
						</table>
					</div>
					<!-- 테이블 끝 -->
				  </div>
				  <!-- 패널 바디 끝 -->
				  
				</div>
				</div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- 강사 조회 모달 -->
<!-- Modal -->
<div class="modal fade" id="findTeacherModal" tabindex="-1" role="dialog" aria-labelledby="teacherModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="teacherModalLabel">강사 검색</h4>
      </div>
      <div class="modal-body">
        <form class="form-inline text-center">
			  <div class="form-group">
			    <label for="teacherName">이름:</label>
			    <input type="text" class="form-control" name="name" id="teacherName" placeholder="이름을 입력하세요" autocomplete="off">
			  	<button id="teacherSearchBtn" class="btn btn-default">검색</button>
			  </div>
			  
			  <hr>
			  <div class="form-group">
			  <div class="panel panel-default">
				  <!-- 패널 바디 -->
				  <div class="panel-body">
				  	<!-- 테이블 -->
				  	<div class="tbl-header" style="width:100%">
						<table class="table" style="width:100%; margin-bottom:0px;">
						<thead>
							<tr>
							 	<th width="20%">이름</th>
							  	<th width="10%">성별</th>
							  	<th width="40%">전화번호</th>
							  	<th width="30%">선택</th>
							</tr>
						 </thead>
						</table>
					</div>
					<div style="width:100%;overflow:auto; height:300px; margin-top:0px;">
						<table id="teachersList" class="table table-hover" style="width:100%;">
						
						</table>
					</div>
					<!-- 테이블 끝 -->
				  </div>
				  <!-- 패널 바디 끝 -->
				  
				</div>
				</div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script id="studentTemplate" type="text/x-handlebars-template">
{{#each .}}
<tr class="studentTr">
	<td width="10%">{{grade }}</td>
	<td width="20%">{{name }}</td>
	<td width="10%">{{sex }}</td>
	<td width="40%">{{mPhone }}</td>
	<td width="20%"><button type="button" class="btn btn-default studentSelBtn" uno-val="{{uno}}" name-val="{{name}}">선택</button></td>
</tr>
{{/each}}
</script>

<script id="teacherTemplate" type="text/x-handlebars-template">
{{#each .}}
<tr class="teacherTr">
	<td width="20%">{{name }}</td>
	<td width="10%">{{sex }}</td>
	<td width="40%">{{mPhone }}</td>
	<td width="30%"><button type="button" class="btn btn-default teacherSelBtn" uno-val="{{uno}}" name-val="{{name}}">선택</button></td>
</tr>
{{/each}}
</script>

<script>
var printData = function(type, arr, target, templateObject) {

	var template = Handlebars.compile(templateObject.html());

	if(type="student") {
		var html = template(arr);
		$(".studentTr").remove();
		target.html(html);
	}
	else {
		var html = template(arr);
		$(".studentTr").remove();
		target.html(html);
	}

}

$("#studentSearchBtn").on("click", function (event) {
	 event.preventDefault();
	
	 var studentNameObj = $("#studentName");
	 var name = studentNameObj.val();
	 
	 console.log(name);
	  
	 $.getJSON("/ajax/studentsByName/"+name, function(result){
		  	console.log("result: " + result);
			printData("student", result, $("#studentsList"), $("#studentTemplate"))
		});
});

$(document).on("click", ".studentSelBtn", function(event) {
	event.preventDefault();
	
	var uno = $(this).attr("uno-val");
	var name = $(this).attr("name-val");
	
	$("#clientNum").val(uno);
	$("#client").val(name);
	$("button[data-dismiss='modal']").click();
});

$("#teacherSearchBtn").on("click", function (event) {
	 event.preventDefault();
	
	 var teacherNameObj = $("#teacherName");
	 var name = teacherNameObj.val();
	  
	 console.log(name);
	 
	  $.getJSON("/ajax/teachersByName/"+name, function(result){
		  	console.log("result: " + result);
			printData("teacher", result, $("#teachersList"), $("#teacherTemplate"))
		});
});

$(document).on("click", ".teacherSelBtn", function(event) {
	event.preventDefault();
	
	var uno = $(this).attr("uno-val");
	var name = $(this).attr("name-val");
	
	$("#counselorNum").val(uno);
	$("#counselor").val(name);
	$("button[data-dismiss='modal']").click();
});

$("#listBtn").on("click", function(e) {
	var loginRole = "${login.role}";
	var name = "${login.name}";
	
	if(loginRole == '학생') {
		location.href="/consulting/list?searchType=client&keyword="+name;
	}
	else if(loginRole == '강사') {
		location.href="/consulting/list?searchType=counselor&keyword="+name;
	}
	else {
		location.href="/consulting/list";
	}
});
</script>

<%@ include file="../layout/footer.jsp"%>