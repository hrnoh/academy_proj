<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 게시판</title>

<style>
#title {
	height: 25;
	font-family: '돋움';
	font-size: 14;
	text-align: center;
}

table.border {
	border: 3px solid lightgray;
}

table.border th {
	border: 1px solid lightgray;
	width: 60;
}

td textarea {
	resize: none;
}
</style>
<!-- 출처: http://all-record.tistory.com/127 [세상의 모든 기록] -->

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<div class="col-xs-2">
			<ul class="list-group">
				<li class="list-group-item active">홈페이지 수정</li>
				<li class="list-group-item"><a href="#introduce">공지사항 조회</a></li>
				<li class="list-group-item"><a href="#notice">공지사항 수정/삭제</a></li>
			</ul>
		</div>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			<h1>공지사항 조회</h1>

			<form method="post" action="#" name="noticeForm"
				enctype="multipart/form-data">
				<%-- 					
					<!-- nno는 서버에서 자동으로 추가 -->
					<input type="hidden" name="nno"
						value=""> --%>
				<table class="border">
					<tr>
						<th id="title">작성자</th>
						<td colspan="4"><input name="notice_writer" type="text"
							size="72" maxlength="100" value="" /></td>
					</tr>
					<tr>
						<th id="title">제 목</th>
						<td colspan="4"><input name="board_subject" type="text"
							size="72" maxlength="100" value="" /></td>
					</tr>
					<tr>
						<th id="title">내 용</th>
						<td colspan="4"><textarea name="board_content" cols="80"
								rows="20"></textarea></td>
					</tr>
					<tr>
						<th id="title">파일첨부</th>
						<td colspan="4"><input type="file" name="board_file" /></td>
					</tr>

					<tr align="right" valign="middle">
						<td colspan="5"><input type="submit" value="등록"> <input
							type="reset" value="초기화">
					</tr>
				</table>
			</form>
			<!-- 출처: http://all-record.tistory.com/127 [세상의 모든 기록] -->
		</div>
		<!-- contents end -->

	</div>
</div>

<!-- footer -->
<%@include file="../layout/footer.jsp"%>