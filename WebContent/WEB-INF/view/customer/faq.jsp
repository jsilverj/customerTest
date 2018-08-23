<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="${pageContext.servletContext.contextPath }/js/jquery-3.3.1.min.js"></script>

<style>
.menu a {
	cursor: pointer;
	background-color: #ffffff;
}

.menu .hide {
	display: none;
	background-color: #e6e6e6;
}
</style>


<div>
	<table class="a">
		<c:forEach var="a" items="${all}" varStatus="all">
			<tr class="menu">
				<td width="25%">${a.category }</td>
				<td><a>${a.title}</a></td>
			</tr>
			<tr>
				<td class="hide">${a.content}</td>
			</tr>
		</c:forEach>
	</table>
</div>

<script>
	$(document).ready(function() { //ready()는 웹페이지 로딩이 끝나는 시점에 실행되는 메소드 

		$(".menu>a").click(function() {
			$(this).next("td").toggleClass("hide");
		});

	});
</script>




