<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>온라인</h4>
<table>
	<c:forEach var="o" items="${online}" varStatus="online">
		<tr>
			<td>${o.category }</td>
			<td><div class="w3-dropdown-click">
					<button onclick="myFunction('ans_${online.index }')"
						class="w3-button w3-white">${o.title}</button>
					<div id="ans_${online.index }"
						class="w3-dropdown-content w3-border">
						<div class="w3-bar-item w3-button">${o.content}</div>
					</div>
				</div></td>
		</tr>
	</c:forEach>
</table>

<script>
	//질문 누르면 답변이 열림
	function myFunction(target) {
		var x = document.getElementById(target);
		if (x.className.indexOf("w3-show") == -1) {
			x.className += " w3-show";
		} else {
			x.className = x.className.replace(" w3-show", "");
		}
	}
</script>
