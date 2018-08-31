<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
				<a href="readInfo.do?num=${notice.num}" style="text-decoration: none">${notice.title }</a>
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
<br/>
	<a href="/info.do?num=1&page=1&viewPage=1" ><button type="button" class="w3-button w3-black w3-round-large">처음</button></a>
	<c:choose>
		<c:when test="${num ne 1 }">
			<a href="/info.do?num=${num-1 }&page=${num-1 }&viewPage=${(num-1)*5-4}" ><button type="button" class="w3-button w3-black w3-round-large">◀</button></a>
		</c:when>
	</c:choose>
	
	<c:forEach var="i" begin="${(num-1)*5+1 }" end="${pageCount }" step="1">
		<a href="/info.do?num=${num }&page=${num}&viewPage=${i}" class="w3-button">${i }</a>
	</c:forEach>
	
	<a href="/info.do?num=${num+1 }&page=${num+1}&viewPage=${(num+1)*5-4}" ><button type="button" class="w3-button w3-black w3-round-large">▶</button></a>
	<a href="#" ><button type="button" class="w3-button w3-black w3-round-large">끝</button></a>
	<br/>
	<br/>
	<c:choose>
		<c:when test="${sessionScope.auth.grade eq 0 }">
			<a href="/writeInfo.do"><button type="button" class="w3-button w3-black" style="">글작성</button></a>	
		</c:when>
	</c:choose>
</div>


