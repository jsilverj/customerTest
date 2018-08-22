<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<br/>
<div align="center">
<h2>공 지 사 항</h2>

<table class="w3-table w3-striped w3-card-4 w3-hoverable" style="width:1000px;">
    <tr>
      <th style="text-align:center; width:100px;">번 호</th>
      <th style="text-align:center;">제 목</th>
      <th style="text-align:center; width:200px;">등록일</th>
      <th style="text-align:center; width:100px;">조회수</th>
    </tr>
	<c:forEach items="${list }" var="notice">
		<tr>
			<td style="text-align:center;">
				${notice.num }
			</td >
			<td style="text-align:center;">
				${notice.title }
			</td>
			<td style="text-align:center;">
				${notice.regDate }
			</td>
			<td style="text-align:center;">
				${notice.count }
			</td>
		</tr>
	</c:forEach>
</table>
</div>

