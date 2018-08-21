<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div style="height: 80px"></div>
<!-- 상단 여백 -->

<h2>FAQ</h2>

	<div align="center" class="w3-container">
		<div class="w3-bar" align="center">
		<c:forEach var="cc" items="${cateCount}" >
			<button class="w3-button w3-border">
				${ cc.CATEGORY }(${ cc.C })
			</button>
		</c:forEach>
		</div>
	</div>



