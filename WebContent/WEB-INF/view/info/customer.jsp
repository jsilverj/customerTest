<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>공 지 사 항</h2>
<table class="w3-table w3-striped">
    <tr>
      <th>번 호</th>
      <th>제 목</th>
      <th>등록일</th>
      <th>조회수</th>
    </tr>
	<c:forEach items="list" varStatus="notice">
		<tr>
			<td>
				${notice.num }
			</td>
			<td>
				${notice.title }
			</td>
			<td>
				${notice.regDate }
			</td>
			<td>
				${notice.count }
			</td>
		</tr>
	</c:forEach>
</table>
