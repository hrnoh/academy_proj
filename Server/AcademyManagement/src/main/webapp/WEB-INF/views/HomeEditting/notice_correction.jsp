<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 수정</title>
<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="/resources/css/noticeboard.css">

<!-- 게시판 글쓰기 css -->
<link rel="stylesheet" href="/resources/css/writingboard.css">

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<%@include file="left_menu.jsp" %>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			
			<!-- 공지사항 수정 -->
			<h1>공지사항 수정</h1>
			<form method="post" action="#" name="noticeCorrectionForm"
				enctype="multipart/form-data">
				<%-- 					
					<!-- nno는 서버에서 자동으로 추가?? -->
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
						<td colspan="5">
						<!-- value값 설정하면 같은 submit이라 해도 구분 가능,
							그래서 둘 다 type=submit 으로 작성함 -->
						<input type="submit" value="저장">
						<input type="submit" value="삭제">
						<input type="button" value="취소" onclick="">
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