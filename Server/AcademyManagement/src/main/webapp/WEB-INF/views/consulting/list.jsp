<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 헤더 -->
<%@include file="../layout/header.jsp"%>
<title>상담 신청 내역 조회</title>

<!-- 센터 -->
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


		<!-- contents -->
		<div class="col-xs-10 text-left">
			<div class="panel panel-default">
				<div class="panel-heading">
					<b>상담 신청 내역</b>
				</div>

				<!-- 패널 바디 -->
				<div class="panel-body">

					<!-- 필터 -->
					<div class="row col-xs-12">
						<form id="myForm" action="/consulting/list" method="get">
						
							<c:choose>
								<c:when test="${login.role == '학생' }">
									<input type="hidden" name="searchType" value="client"/>
									<input type="hidden" name="keyword" value="${login.name }"/>
								</c:when>
								<c:when test="${login.role == '강사' }">
									<input type="hidden" name="searchType" value="counselor"/>
									<input type="hidden" name="keyword" value="${login.name }"/>
								</c:when>
								<c:otherwise>
									<input type="hidden" name="searchType" value=""/>
									<input type="hidden" name="keyword" value=""/>
								</c:otherwise>
							</c:choose>
						
							<table>
								<tr>
									<td>
									<h4><b>필터</b></h4>
									</td>
								</tr>
								<tr>
									<td>상태</td>
									<td colspan="2"><select name="status" class="form-control">
											<option value="" selected>&nbsp;</option>
											<option value="신청">신청</option>
											<option value="완료">완료</option>
									</select></td>

									<td width="5%">&nbsp;</td>

									<td>구분</td>
									<td><select name="role" class="form-control">
											<option value="" selected>&nbsp;</option>
											<option value="학생">학생</option>
											<option value="학부모">학부모</option>
									</select></td>
								</tr>
								<tr>
									<td>신청자</td>
									<c:choose>
									<c:when test="${login.role=='학생' }">
										<td><input type="text" name="client" class="form-control" value="${login.name }" disabled></td>
										<td><input id="searchByClientBtn" type="button" value="검색" class="btn btn-default"></td>
									</c:when>
									<c:when test="${login.role=='강사' }">
										<td><input type="text" name="client" class="form-control" value="" disabled></td>
										<td><input id="searchByClientBtn" type="button" value="검색" class="btn btn-default" disabled></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="client" class="form-control"></td>
										<td><input id="searchByClientBtn" type="button" value="검색" class="btn btn-default"></td>
									</c:otherwise>
									</c:choose>
									<td>&nbsp;</td>

									<td>상담자</td>
									<c:choose>
									<c:when test="${login.role=='학생' }">
										<td><input type="text" name="counselor" class="form-control" value="" disabled></td>
										<td><input id="searchByCounselorBtn" type="button" value="검색" class="btn btn-default" disabled></td>
									</c:when>
									<c:when test="${login.role=='강사' }">
										<td><input type="text" name="counselor" class="form-control" value="${login.name }" disabled></td>
										<td><input id="searchByCounselorBtn" type="button" value="검색" class="btn btn-default"></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="counselor" class="form-control"></td>
										<td><input id="searchByCounselorBtn" type="button" value="검색" class="btn btn-default"></td>
									</c:otherwise>
									</c:choose>
									
								</tr>
								<tr>
									<td>상담 내용</td>
									<c:choose>
									<c:when test="${login.role=='학생' || login.role=='강사' }">
										<td><input type="text" name="content" class="form-control" disabled></td>
										<td><input id="searchByContentBtn" type="button" value="검색" class="btn btn-default" disabled></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="content" class="form-control"></td>
										<td><input id="searchByContentBtn" type="button" value="검색" class="btn btn-default"></td>
									</c:otherwise>
									</c:choose>

									<td>&nbsp;</td>

									<td>날짜</td>
									<td><input type="date" name="consultingDate" value="" class="form-control"></td>
								</tr>
							</table>
						</form>

					</div>
					<!-- 필터 끝 -->

					<!-- 테이블 -->
					<div class="tbl-header" style="width: 100%">
						<table class="table" style="width: 100%; margin-bottom: 0px;">
							<thead>
								<tr>
									<th width="10%">상태</th>
									<th width="10%">구분</th>
									<th width="15%">신청자</th>
									<th width="15%">상담자</th>
									<th width="30%">상담 내용</th>
									<th width="20%">일시</th>
								</tr>
							</thead>
						</table>
					</div>
					<div
						style="width: 100%; overflow: auto; height: 300px; margin-top: 0px;">
						<table class="table table-hover" style="width: 100%;">
						<c:forEach items="${list}" var="consultingVO">
							<tr class='clickable-row'
								data-href='/consulting/read?searchType=${cri.searchType }&keyword=${cri.keyword }&cno=${consultingVO.cno}'
								style="cursor: pointer">
								<td width="10%">${consultingVO.status }</td>
								<td width="10%">${consultingVO.type }</td>
								<td width="15%">${consultingVO.client }</td>
								<td width="15%">${consultingVO.counselor }</td>
								<td width="30%">${consultingVO.content }</td>
								<td width="20%">${consultingVO.consultingDate}</td>
							</tr>
						</c:forEach>
						</table>
					</div>
					<!-- 테이블 끝 -->
				</div>
				<!-- 패널 바디 끝 -->

			</div>
		</div>
		<!-- contents end -->

	</div>
</div>


<script type="text/javascript">
	var msg = "${msg}";
	
	if(msg == "SUCCESS") {
		alert("처리가 완료되었습니다.");
	}

	$(document).ready(function() {
		var formObj = $("#myForm");

		$(".clickable-row").click(function() {
			window.location = $(this).data("href");
		});

		$("#searchByClientBtn").on("click", function(e) {
			var keyword = $("input[name='client']").val();
			
			$("input[name='searchType']").val("client");
			$("input[name='keyword']").val(keyword);
			
			formObj.submit();
		});
		
		$("#searchByCounselorBtn").on("click", function(e) {
			var keyword = $("input[name='counselor']").val();
			
			$("input[name='searchType']").val("counselor");
			$("input[name='keyword']").val(keyword);
			
			formObj.submit();
		});
		
		$("#searchByContentBtn").on("click", function(e) {
			var keyword = $("input[name='content']").val();
			
			$("input[name='searchType']").val("content");
			$("input[name='keyword']").val(keyword);
			
			formObj.submit();
		});
	});
</script>

<!-- footer -->
<%@include file="../layout/footer.jsp"%>