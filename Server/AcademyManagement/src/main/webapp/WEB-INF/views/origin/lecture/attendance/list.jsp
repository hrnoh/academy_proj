<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>


<!-- 패널 시작 -->
<div class="panel panel-default">
	<!-- Default panel contents -->
	<div class="panel-heading">출석</div>

	<div class="panel-body">
		<!-- 입력 양식 -->
		<form class="form-horizontal" id="attendanceForm" method="post">
			<!-- hidden -->
			<input type="hidden" name="ano" value="">
			<input type="hidden" name="uno" value="${takeCourseVO.uno}">
			<input type="hidden" name="lno" value="${takeCourseVO.lno}">
			<input type='hidden' name='page' value="${cri.page}"> 
			<input type='hidden' name='perPageNum' value="${cri.perPageNum}">

			<!-- 테이블 -->
			<div class="tbl-header" style="width: 100%">
				<table class="table" style="width: 100%; margin-bottom: 0px;">
					<thead>
						<tr>
							<th width="40%">날짜</th>
							<th width="30%">출석</th>
							<th width="15%">수정</th>
							<th width="15%">삭제</th>
						</tr>
					</thead>
				</table>
			</div>
			<div style="width: 100%; overflow: auto; height: 100px; margin-top: 0px;">
				<table class="table table-hover" style="width: 100%;">
					<c:forEach items="${aList}" var="attendanceVO">
					<tr>
						<td width="40%" class="fullDate">${attendanceVO.fullDate}</td>
						<td width="30%" class="type">${attendanceVO.type}</td>
						<td width="15%">
							<button type="button" class="btn btn-default modifyModalBtn" data-toggle="modal" 
							data-target="#modifyModal" data-val="${attendanceVO.ano}">
  								수정
							</button>
						</td>
						<td width="15%">
							<input class="btn btn-default aRemoveBtn" type="button" value="삭제" data-val="${attendanceVO.ano}">
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<!-- 테이블 끝 -->
			<!-- 등록 버튼 -->
		  <div class="form-group">	
		  	<div class="col-xs-offset-8 col-xs-4 text-right">
			 	 <button id="registModalBtn" type="button" class="btn btn-default" data-toggle="modal" data-target="#modifyModal">
			 	 	등록
			 	 </button>
			 </div>
		  </div>


		  <!-- 등록/수정 모달 -->
		  <!-- Modal -->
		  <div class="modal fade" id="modifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalTitle" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="moodalTitle">등록</h4>
			      </div>
			      <div class="modal-body">
					<div class="container-fluid">
						<div class="form-group">	    
						    <label for="year" class="col-xs-2 control-label">날짜 : </label>
						    <div class="col-xs-2">
						    	<input type="text" class="form-control" id="year" name="year" placeholder="년">
						    </div>
						    <div class="col-xs-2">
						    	<input type="text" class="form-control" id="month" name="month" placeholder="월">
						    </div>
						    <div class="col-xs-2">
						    	<input type="text" class="form-control" id="day" name="day" placeholder="일">
						    </div>
					  	</div>
					  	
			            <div class="form-group">	    
						    <label for="status" class="col-xs-2 control-label">출석 : </label>
						    <div class="col-xs-5">
						    	<select class="form-control" id="type" name="type">
								  <option value="출석">출석</option>
								  <option value="지각">지각</option>
								  <option value="결석">결석</option>
								</select>
						    </div>
					  	</div>
			          </div>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button id="submitBtn" type="button" class="btn btn-primary" data-val="aRegistBtn">등록</button>
			      </div>
			    </div>
			  </div>
		  </div>



		</form>
		<!-- 입력 양식 끝 -->
	</div>
	<!-- 패널 바디 끝 -->
</div>

<script>
	$(document).ready(function(){
		
		var formObj = $("#attendanceForm");
		
		console.log(formObj);
		
		$("#registModalBtn").on("click", function(){
			
			$("#submitBtn").attr("data-val", "aRegistBtn");
			$("#submitBtn").html("등록");
		});
		
		$(".modifyModalBtn").on("click", function(){
			var idx = $(".modifyModalBtn").index(this)
			var ano = $(".modifyModalBtn:eq(" + idx + ")").attr("data-val");
			var fullDate = $(".fullDate:eq(" + idx + ")").html().split('/');
			var year = fullDate[0];
			var month = fullDate[1];
			var day = fullDate[2];
			var type = $(".type:eq(" + idx + ")").html();
			
			$("input[name='ano']").val(ano);
			$("#year").val(year);
			$("#month").val(month);
			$("#day").val(day);
			
			if(type == "출석") {
				$("#type").find("option:eq(0)").prop("selected", true);
				$("#type").find("option:eq(1)").prop("selected", false);
				$("#type").find("option:eq(2)").prop("selected", false);
			}
			else if(type == "지각") {
				$("#type").find("option:eq(1)").prop("selected", true);
				$("#type").find("option:eq(0)").prop("selected", false);
				$("#type").find("option:eq(2)").prop("selected", false);
			}
			else {
				$("#type").find("option:eq(2)").prop("selected", true);
				$("#type").find("option:eq(0)").prop("selected", false);
				$("#type").find("option:eq(1)").prop("selected", false);
			}
			
			$("#submitBtn").attr("data-val", "aModifyBtn");
			$("#submitBtn").html("수정");
		});
		
		$("#submitBtn").on("click", function(){
			if($(this).attr("data-val") == "aRegistBtn") {
				formObj.attr("action", "/lecture/attendance/regist");
			}
			else {
				formObj.attr("action", "/lecture/attendance/modify");
			}
			
			
			formObj.submit();
		});
		
		
		$(".aRemoveBtn").on("click", function() {
			var ano = $(this).attr("data-val");
			
			$("input[name='ano']").val(ano);
			
			formObj.attr("action", "/lecture/attendance/remove");
			formObj.submit();
		});
		
		
	});
</script>