<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<footer class="container text-center">
	<hr>
	<p>
		경기도 시흥시 산기대학로 237, TIP 000호 <br> TEL 031.888.3000 FAX
		031.888.1010 <br> KPU아카데미 대표 : 김학원 사업자등록번호 : 120-90-12547 학원등록번호
		: 제 001호 <br> ⓒ KPU Academy Inc. 2017 <br>
	</p>
</footer>

<!-- script -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- nav js -->
<script>
		$(document).ready(function() {
			$("#nav li").hover(function() {
				$(this).attr("class", "focus open");},
				function() {
					$(this).attr("class", "");
				});
		});
	</script>
</body>
</html>