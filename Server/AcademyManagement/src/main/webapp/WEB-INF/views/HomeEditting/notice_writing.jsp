<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 작성</title>
<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="resources/css/noticeboard.css">

<!-- 게시판 글쓰기 css -->
<link rel="stylesheet" href="resources/css/writingboard.css">

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<div class="col-xs-2">
			<ul class="list-group">
				<li class="list-group-item active">홈페이지 수정</li>
				<li class="list-group-item"><a href="#">공지사항 조회</a></li>
				<li class="list-group-item"><a href="#">공지사항 작성</a></li>
				<li class="list-group-item"><a href="#">공지사항 수정/삭제</a></li>
			</ul>
		</div>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			
			<!-- 공지사항 작성 -->
			<h1>공지사항 작성</h1>
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
			
			<!-- 공지사항 게시판 -->
			<%@include file="../layout/notice_board.jsp" %>

		</div>
		<!-- contents end -->

	</div>
</div>

<!-- footer -->
<%@include file="../layout/footer.jsp"%>