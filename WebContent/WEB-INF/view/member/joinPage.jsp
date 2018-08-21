<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>
<div style="height: 80px">
</div>
<div align="center">
<br/>
<h1>회원가입</h1>
<br/>
<br/>
<form action="<c:url value="/join.do" />" method="post">
<table>
<tr>
	<td>
		<b>▶ 이메일</b>
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
		<b>▶ 비밀번호</b>
	</td>
	<td>
		<input type="text" name="pass" required />
	</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
	<td>
		<b>▶ 이름</b>
	</td>
	<td>
		<input type="text" name="name" required />
	</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
	<td>
		<b>▶ 폰번호</b>
	</td>
	<td>
		<input type="text" name="phone" required />
	</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
	<td>
		<b>▶ 주소</b>
	</td>
	<td>
		<input type="text" name="address" required />
	</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
	<td>
		<b>▶ 생년월일</b> 
	</td>
	<td>
		<input type="text" name="birth" required />
	</td>
</tr>
</table>
<p>
	<button type="submit">가 입</button> <button type="reset">재 작 성</button>
</p>	
</form>
</div>
