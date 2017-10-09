<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 헤더 -->
<%@include file="../layout/header.jsp" %>
<title>공지사항 작성</title>
<!-- 공지사항 게시판 css -->
<link rel="stylesheet" href="/resources/css/noticeboard.css">

<!-- 게시판 글쓰기 css -->
<link rel="stylesheet" href="/resources/css/writingboard.css">

<!-- 센터 -->
<div class="container text-center">
	<div class="row content">

		<!-- left menu -->
		<%@include file="left_menu.jsp"%>

		<!-- contents -->
		<div class="col-xs-10 text-left">
			
			<!-- 공지사항 작성 -->
			<h1>상세보기</h1>
			<form method="post" action="/board/regist" id="boardForm">
				
				<!-- uno 추가 -->		
				<input name="bno" type="hidden" value="${boardVO.bno }" />
				<input name="uno" type="hidden" value="1" />
				<input type='hidden' name='page' value="${cri.page}"> 
				<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
				
				<table class="border">
					<tr>
						<th id="title">제 목</th>
						<td colspan="4">
							<input name="title" type="text" size="72" maxlength="100" value="${boardVO.title }" disabled/>
						</td>
					</tr>
					<tr>
						<th id="writer">작성자</th>
						<td colspan="4">
							<input name="title" type="text" size="72" maxlength="100" value="${boardVO.writer }" disabled/>
						</td>
					</tr>
					<tr>
						<th id="content">내 용</th>
						<td colspan="4">
							<textarea name="content" cols="80"rows="20" disabled>${boardVO.content }</textarea>
						</td>
					</tr>

					<tr align="right" valign="middle">
						<td colspan="5">
							<input id="modifyBtn" type="button" value="수정">
							<input id="removeBtn" type="button" value="삭제">
							<input id="listBtn" type="button" value="목록">
						</td>
					</tr>
				</table>
			</form>
			<!-- 출처: http://all-record.tistory.com/127 [세상의 모든 기록] -->
			
			<!-- 공지사항 게시판 -->
			<div>
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="10%">번호</th>
							<th width="50%">제목</th>
							<th width="10%">작성자</th>
							<th width="20%">작성일</th>
							<th width="10%">조회</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="boardVO" items="${list}" varStatus="status">
							<tr>
								<td>${boardVO.bno}</td>
								<td id="title"><a
									href="/board/read?page=${cri.page }&perPageNum=${cri.perPageNum}&bno=${boardVO.bno}">${boardVO.title}</a>
									<c:if test="${boardVO.viewCnt >= 20}">
										<span class="hit">hit!</span>
									</c:if></td>
								<td>${boardVO.writer}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regDate}" /></td>
								<td>${boardVO.viewCnt}</td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
		<!-- contents end -->

	</div>
</div>

<script>
		$(document).ready(function(){
	
			var formObj = $("#boardForm");
			
			console.log(formObj);
			
			$("#modifyBtn").on("click", function(){
				formObj.attr("method", "get");
				formObj.attr("action", "/board/modify");
				formObj.submit();
			});
			
			$("#removeBtn").on("click", function(){
				formObj.attr("action", "/board/remove");
				formObj.submit();
			});
			
			$("#listBtn ").on("click", function(){
				self.location = "/board/list?page=${cri.page}&perPageNum=${cri.perPageNum}";
			});
			
		});
		
</script>
<!-- footer -->
<%@include file="../layout/footer.jsp"%>