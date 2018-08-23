<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<div class="w3-container">

<h4>전체</h4>
<table>
	<c:forEach var="a" items="${all}" varStatus="all">
		<tr>
			<td>${a.category }</td>
			<td><div class="w3-dropdown-click">
					<button onclick="myFunction('ans_${all.index }')"
						class="w3-button w3-white">${a.title}</button>
					<div id="ans_${all.index }" class="w3-dropdown-content w3-border">
						<div class="w3-bar-item w3-button">${a.content}</div>
					</div>
				</div></td>
		</tr>
	</c:forEach>
</table>

<div class="w3-center">
<div class="w3-bar">
  <a href="#" class="w3-button">&laquo;</a>
  <a href="#" class="w3-button">1</a>
  <a href="#" class="w3-button">2</a>
  <a href="#" class="w3-button">3</a>
  <a href="#" class="w3-button">4</a>
  <a href="#" class="w3-button">&raquo;</a>
</div>
</div>

</div>

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
	
	/*;visit(${a.num }
	function visit(num){
		
		
	}
	*/
</script>


