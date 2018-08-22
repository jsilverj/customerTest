<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					글번호 : ${InfoVo.num }
				</th>
				<th style="text-align:center;">
					제  목 : ${InfoVo.title }
				</th>
				<th style="text-align:right;">
					등록일 : ${InfoVo.regDate }
				</th>
			</tr>
			<tr>
				<td colspan="3" style="height:500px;">
					${InfoVo.content }
				</td>
			</tr>
		</table>
		
		
	</div>
</body>
</html>