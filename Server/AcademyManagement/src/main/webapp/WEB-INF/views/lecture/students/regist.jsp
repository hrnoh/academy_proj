<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../../layout/header.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

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
				  	<a href="/lecture/notice/list?lno=${takeCourseVO.lno }&lname=${takeCourseVO.lname }" class="list-group-item">알림장</a>
				    <a href="/lecture/students/list?lno=${takeCourseVO.lno }&lname=${takeCourseVO.lname }" class="list-group-item active">수강생</a>
				  </div>
				</div>
			</div>
			
			<!-- 내용 -->
			<div class="col-xs-10 text-left">
				  <!-- 패널 시작 -->
				  <div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading">수강생 등록</div>
					
					  <div class="panel-body">
					  <!-- 입력 양식 -->
					  <form class="form-horizontal" id="myForm" action="/lecture/students/regist" method="post">
					  
					  	  <input type="hidden" name="lname" value="${takeCourseVO.lname }">
					  	  <input type="hidden" name="lno" value="${takeCourseVO.lno }">
					  	  <input type="hidden" name="uno" value="">
					  
					  	  <!-- 행1 -->
						  <div class="form-group form-inline">
						    <label for="title" class="col-xs-2 control-label">학생명:</label>
						    <div class="col-xs-10">
								 <input type="text" id="student" class="form-control" disabled>
								 <button type="button" class="btn btn-default" data-toggle="modal" data-target="#findStudentModal" data-backdrop="static">검색</button>
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

<script>
	$(document).ready(function(){
		$("#listBtn ").on("click", function(){
			self.location = "/lecture/students/list?lno=${takeCourseVO.lno}&lname=${takeCourseVO.lname}";
		});
		
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
			
			$("input[name='uno']").val(uno);
			$("#student").val(name);
			$("button[data-dismiss='modal']").click();
		});
		
	});
	
	
</script>

<%@ include file="../../layout/footer.jsp" %>