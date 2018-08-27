<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<br/>
	<br/>
	<div align="center" >
		<table class="w3-table w3-bordered" style="width:1000px;">
			<tr>
				<th style="text-align:left;">
					<small>글번호 : ${InfoVo.num }</small>
				</th>
				<th style="text-align:center;">
					제  목 : ${InfoVo.title }
				</th>
				<th style="text-align:right;">
					<small>등록일 : ${InfoVo.regDate }</small>
				</th>
			</tr>
			<tr>
				<td colspan="3" style="text-align:right;">	
					<a href="${infoFile.url }" download>${infoFile.name }</a>
				</td>
			</tr>	
			<tr>
				<td colspan="3" style="height:500px;">
					<c:out value="${InfoVo.content }" escapeXml="true"></c:out>
				</td>
			</tr>
		</table>
		<br/>
		<br/>
		<a href="/info.do?num=1&page=1&viewPage=1"><button type="button" class="w3-button w3-black w3-round-large">목록</button></a>
	</div>
</body>
</html>