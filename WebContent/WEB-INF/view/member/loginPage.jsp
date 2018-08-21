<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>
<div style="height: 80px">
</div>
<div align="center">
<br/>
<h1>로그인</h1>
<br/>
<br/>
<form action="<c:url value="/logining.do" />" method="post">
<table>
<tr>
	<td>
		<b>- 이메일</b>
	</td>
	<td>
		<input type="text" name="email" required />
	</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
	<td>
		<b>- 비밀번호</b>
	</td>
	<td>
		<input type="text" name="pass" required />
	</td>
</tr>
<tr>
<td>
</td>
</tr>
</table>
<p>
	<input type="checkbox">로그인 유지<button type="submit">로그인</button>
</p>	
</form>
</div>