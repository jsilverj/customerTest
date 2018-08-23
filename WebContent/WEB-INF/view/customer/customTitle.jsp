<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
ul.nav{
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #cccccc;
	width:40%;
}
   
li.link {
    float: left;
}

li a {
    display: block;
    color: black;
    text-align: center;
    text-decoration: none;
    margin: 10px;
    padding : 5px;
}

li a:hover {
    background-color: #d9d9d9;
}

</style>

<div style="height: 80px"></div>
<!-- 상단 여백 -->

<h2>FAQ</h2>

<ul class="nav">
<li class="link"><a href="/customer/center.do">전체(${allCount})</a></li><!-- 전체 버튼 -->

<c:forEach var="cc" items="${cateCount}" varStatus="count"><!-- 카테고리별 버튼 -->
			<li class="link"><a href="${count.index }.do">${ cc.CATEGORY }(${ cc.C })</a></li>
		</c:forEach>
</ul>







<!-- 
<div align="center" class="w3-container">
	<div class="w3-bar" align="center">
		<a href="javascript:void(0);"><button class="w3-button w3-border">전체(${allCount})</button></a>

		<c:forEach var="cc" items="${cateCount}" varStatus="count">
			<a href="${count.index }.do"><button class="w3-button w3-border"
					onclick="click('${cc.CATEGORY}')">${ cc.CATEGORY }(${ cc.C })
				</button></a>
		</c:forEach>
	</div>
</div>
 -->



