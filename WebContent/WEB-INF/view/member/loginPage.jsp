<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<div style="height: 80px"></div>
<div align="center">
	<h1>Login</h1>
	<br /> <br />
	<form action="<c:url value="/logining.do" />" method="post">
		<div align="center" style="width: 500px">
			<p>
				- Email <input class="w3-input w3-hover-black" type="text" name="email" id="email" required />\
					<span id="emailCheck"></span>
			</p>
			<p>
				- Password <input class="w3-input w3-hover-black" type="text" name="pass" id="pass" required />
					<span id="passCheck"></span>
			</p>

		</div>

		<p>
			<input type="checkbox">keep logged in &nbsp;&nbsp;
			<button class="w3-button w3-black w3-round-large" type="submit">Login</button>
		</p>
		</p>

	</form>
</div>

<script>
	$("#email").on("change", function() { // email DB체크
		$("#emailCheck").html("");
		if (emailRule.test($(this).val())) {
			$.ajax({
				"url" : "/emailCheckHandle.do",
				"method" : "get",
				"data" : {
					"echeck" : $(this).val()
				}
			}).done(function(r) {
				var rCheck = r.rst;
			}).fail(function(r) {
				console.log(r);
			});
		} else {
			$("#emailCheck").css("color", "red");
			$("#emailCheck").html("Email이나 password가 맞지 않습니다.<br/><br/>");
		}
	});
</script>





