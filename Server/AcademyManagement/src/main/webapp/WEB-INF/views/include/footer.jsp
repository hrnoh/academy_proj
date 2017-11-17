<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
	<footer class="container text-center">
		<hr>
		<p>
			경기도 시흥시 산기대학로 237, TIP 000호 <br> TEL 031.888.3000 FAX
			031.888.1010 <br> KPU아카데미 대표 : 김학원 사업자등록번호 : 120-90-12547 학원등록번호
			: 제 001호 <br> ⓒ KPU Academy Inc. 2017 <br>
		</p>
	</footer>

	<script type="text/javascript">
		$("#logout").on("click", function(e) {
			$("#logoutForm").submit();
		});
	</script>

	<!-- nav js -->
	<script src="/resources/js/nav.js"></script>
</body>
</html>