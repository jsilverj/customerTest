<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div style="height: 80px"></div>
<!-- 상단 여백 -->

<h2>FAQ</h2>

<div align="center" class="w3-container">
	<div class="w3-bar" align="center">
		<button class="w3-button w3-border" onclick="click('전체')">전체(${allCount})</button>
		
		<c:forEach var="cc" items="${cateCount}" varStatus="count">
			<button class="w3-button w3-border" onclick="click('${cc.CATEGORY}')">${ cc.CATEGORY }(${ cc.C })
			</button>
		</c:forEach>
	</div>
</div>


<script>
	function click(target) {
		console.log(target);
		System.out.println(target);
		var xhr = new XMLHttpRequest();
		xhr.open("get", "ajax.do?category=" + target, true); 
		console.log("ready");
		xhr.send(); //요청 전송
		console.log("done");
	}
</script>



