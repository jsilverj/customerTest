<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- 영화 상세 페이지 , 미 개봉 영화는 댓글 작성 못하게 해야 함-->

<style>
em{
	color: #cc0000;
}

</style>

<div style="height: 20px"></div>

<div class="w3-Container w3-dark-grey">
트레일러 영역
</div>

<div class="w3-Container w3-center">
	<div class="w3-Container w3-cell">
		<!-- 메인 포스터 이미지 --><br/>
		<button class="w3-button w3-red">예매하기</button>
	</div>
	<div class="w3-Container w3-cell">
		${movie.MOVIENAME}<br/>
		관람 평점 : <em>${movie.GRADE }</em><br/>
		관람 등급 : ${movie.RATING}<br/>	
		개봉일 : ${movie.RELEASE } <br/>
		장르 : ${movie.GENRE }<br/>
	</div>
</div>


<div class="w3-Container w3-center">
<h3>시놉시스</h3>
${movie.SYNOPSIS}
</div>