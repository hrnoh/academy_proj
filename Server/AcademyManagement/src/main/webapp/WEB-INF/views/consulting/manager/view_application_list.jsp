<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 헤더 -->
<%@include file="../../layout/header.jsp"%>
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
					<a href="" class="list-group-item active">신청 내역 조회</a>
					<a href="/consulting/manager/consulting_regist" class="list-group-item">상담 등록</a>
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
						<form>
							<table>
								<tr>
									<td>
									<h4><b>필터</b></h4>
									</td>
								</tr>
								<tr>
									<td>상태</td>
									<td colspan="2"><select name="state">
											<option value="" selected>&nbsp;</option>
											<option value="신청">신청</option>
											<option value="등록">등록</option>
											<option value="완료">완료</option>
									</select></td>

									<td width="5%">&nbsp;</td>

									<td>구분</td>
									<td><select name="role">
											<option value="" selected>&nbsp;</option>
											<option value="학생">학생</option>
											<option value="학부모">학부모</option>
									</select></td>
								</tr>
								<tr>
									<td>신청자</td>
									<td><input type="text" name="applicant"></td>
									<td><input type="button" value="검색"></td>

									<td>&nbsp;</td>

									<td>상담자</td>
									<td><input type="text" name="counseler"></td>
									<td><input type="button" value="검색"></td>
								</tr>
								<tr>
									<td>상담 내용</td>
									<td><input type="text" name="content"></td>
									<td><input type="button" value="검색"></td>

									<td>&nbsp;</td>

									<td>날짜</td>
									<td><input type="date" name="date" value=" "></td>
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
							<%-- 	<c:forEach items="${list}" var="userVO">
								<tr>
									<td width="10%">완료</td>
									<td width="10%">학생</td>
									<td width="15%">홍길동</td>
									<td width="15%">김사또</td>
									<td width="30%">대입 대비 플랜</td>
									<td width="20%">2017.10.10 17:00</td>
								</tr>
							</c:forEach> --%>

							<tr class='clickable-row'
								data-href='/consulting/manager/application_read'
								style="cursor: pointer">
								<td width="10%">완료</td>
								<td width="10%">학생</td>
								<td width="15%">홍길동</td>
								<td width="15%">김사또</td>
								<td width="30%">대입 대비 플랜</td>
								<td width="20%">2017.10.10 17:00</td>
							</tr>
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
	$(document).ready(function() {

		$(".clickable-row").click(function() {
			window.location = $(this).data("href");
		});

	});
</script>

<!-- footer -->
<%@include file="../../layout/footer.jsp"%>