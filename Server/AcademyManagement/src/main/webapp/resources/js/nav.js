$(document).ready(function() {
	var now = $("#nav li:active");
	var state = now.clone();
			
	$("#nav li").hover(function() {
		$(this).attr("class", "focus open");},
		function() {
			$(this).attr("class", "");
		});
});