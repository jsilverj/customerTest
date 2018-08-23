<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="w3-container" style="height: 100px;"></div>
<!-- <style>
	div.aa{
	align:center;
		width:50%;
	}
</style> -->
<div class="w3-row">
	<div class="w3-container w3-col s2"></div>
	<div class="w3-container w3-col s8">

		<h2 align="center">질문 보관함</h2>

		<table class="w3-table-all w3-card-4 w3-hoverable">
			<tr>
				<th><input type="checkbox"></th>
				<th>writer</th>
				<th style="width:50%">title</th>
				<th>date</th>
			</tr>
			<c:forEach var="qvo" items="${qlist}">
				<tr>
					<td><input type="checkbox"></td>
					<td>${qvo.writer }</td>
					<td><a href="/message/show.do?no=${qvo.num }" target="_blank">
						<c:set var="ct" value="${fn:escapeXml(qvo.title) }" />
						<c:choose>
							<c:when test="${fn:length(ct) gt 21 }">
							${fn:substring(ct,0,21) }··
							</c:when>
							<c:otherwise>
							${ct }
							</c:otherwise>
						</c:choose>
						</a>
					</td>
					<td><fmt:formatDate value="${qvo.regdate }" pattern="yy-MM-dd [HH:mm]"/></td>
				</tr>
			</c:forEach>			
		</table>
		</br>
		<div class="w3-bar" align="center">
			<a href="#" class="w3-button">&laquo;</a> <a href="#"
				class="w3-button">1</a> <a href="#" class="w3-button">2</a> <a
				href="#" class="w3-button">3</a> <a href="#" class="w3-button">4</a>
			<a href="#" class="w3-button">&raquo;</a>
		</div>
	</div>
	<div class="w3-container w3-col s2"></div>
</div>