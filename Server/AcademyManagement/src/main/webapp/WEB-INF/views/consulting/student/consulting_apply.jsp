<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<%@ include file="../../layout/header.jsp"%>


<title>상담 신청</title>

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
					<a href="/consulting/student/view_application_list" class="list-group-item">신청 내역 조회</a> 
					<a href="" class="list-group-item active">상담 신청</a>
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
					<form class="form-horizontal" id="myForm" action="" method="post">
						<%-- 
							<!-- hidden -->
							<input type="hidden" name="lno" value="${lectureVO.lno}">
							<input type='hidden' name='page' value="${cri.page}"> <input
								type='hidden' name='perPageNum' value="${cri.perPageNum}">
						--%>
						<!-- 행1 -->
						<div class="form-group">
							<label for="" class="col-xs-2 control-label">신청자:</label>
							<div class="col-xs-3">
								<input type="text" id="" name="" value="@@@" disabled>
							</div>

							<label for="" class="col-xs-2 control-label">상담자:</label>
							<div class="col-xs-3">
								<input type="text" id="" name="">
							</div>
						</div>

						<!-- 행2 -->
						<div class="form-group">
							<label for="" class="col-xs-2 control-label">상담 내용:</label>
							<div class="col-xs-8">
								<input type="text" id="" name="">
							</div>
						</div>

						<!-- 행3 -->
						<div class="form-group">
							<label for="" class="col-xs-2 control-label">일시: </label>
							<div class="col-xs-3">
								<input type="date" id="" name="">
							</div>
						</div>

						<!-- 등록 버튼 -->
						<div class="form-group">
							<div class="col-xs-push-5 col-xs-5 text-right">
								<input id="" class="btn btn-default" type="submit" value="신청">
								<input id="" class="btn btn-default" type="reset" value="초기화">
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


<%@ include file="../../layout/footer.jsp"%>