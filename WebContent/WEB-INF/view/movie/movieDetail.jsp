<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- 영화 상세 페이지 , 미 개봉 영화는 댓글 작성 못하게 해야 함-->

<style>
em {
	color: #cc0000;
	font-size: 24px;
}

em#re {
	color: #cc0000;
	font-size: 18px;
}

#lay_pop {
	position: absolute;
	z-index: 500;
	width: 1000px;
	height: 700px;
	display: none;
	background-color: #ffffff;
	border: 2px solid #cccccc
}

#all_body {
	position: absolute;
	z-index: 9;
	display: block;
	filter: alpha(opacity = 50);
	opacity: 0.5;
	-moz-opacity: 0.5;
	background-color: #000000;
	left: 0;
	top: 0
}

.synopsis{
	background-color: #f2f2f2;
}

.detail{
	background-color: #f2f2f2;
}

.front{
	background-image: url(http://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/201808/13081_105_1.jpg);
}



</style>

<div style="height: 20px"></div>

<!-- 영화 트레일러 영역 -->
<div class="w3-Container w3-black w3-center">
	<div id="all_body"></div>
	<div id="lay_pop" style="background-color: black;">
		<div align="right">
			<a href="javascript:;" onclick="layerClose('lay_pop','all_body')"><img
				src="/img/x.jpg" style="height: 25px; width: 25px;" /></a>
		</div>
		<br />
		<iframe style="width: 100%; height: 80%;"
			src="https://www.youtube.com/embed/AEQ8hgz1fDk" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>
	</div>
	<div id="all_body"></div>
	<div class="w3-padding w3-margin">
		<input type="image" class="front" src="/img/play.png" value="layer" onclick="pushLayer()"></input>
	</div>
</div>

<div align="center"><h3>상세 정보</h3><br/></div>
<!-- 영화 상세 설명 -->
<div class="w3-row">
	<div class="w3-col w3-container" style="width: 26%"></div>
	<div class="w3-Container w3-blue w3-col" style="width: 24%">
		<!-- 메인 포스터 이미지 -->
		<br />
		<a href="/reserve/page.do"><button class="w3-button">예매하기</button></a>
	</div>
	<div class="detail w3-Container w3-col" style="width: 24%">
		<h3>${movie[0].MOVIENAME}</h3>
		<br /> 관람 평점 : <em>${movie[0].GRADE }</em><br /> 관람 등급 :
		${movie[0].RATING}<br /> 개봉일 :
		<fmt:formatDate value="${movie[0].RELEASE }" pattern="yyyy-MM-dd" />
		<br /> 장르 : ${movie[0].GENRE }<br /> 출연진 :
		<c:forTokens items="${movie[0].CAST}" delims="/" var="ca"
			varStatus="vs">
			${ca} 
			<c:if test="${!vs.last }">,</c:if>
		</c:forTokens>
	</div>
	<div class="w3-col w3-container" style="width: 26%"></div>
</div>
<br/>
<br/>
<!-- 영화 시놉시스 -->
<div class="w3-center">
	<h3>시놉시스</h3>
</div>
<div class="w3-row">
	<div class="w3-col w3-container" style="width: 26%"></div>
	<div class="synopsis w3-col w3-container" style="width: 48%">
		<c:forTokens items="${movie[0].SYNOPSIS}" delims="." var="item">
			<p>${item}.</p>
		</c:forTokens>
	</div>
	<div class="w3-col w3-container" style="width: 26%"></div>
</div>
<br/>
<br/>
<br/>

<!-- 비디오(영화 트레일러) -->
<script language="javascript">
	function pushLayer() {
		var $width = parseInt($("#lay_pop").css("width"));
		var $height = parseInt($("#lay_pop").css("height"));
		var left = ($(window).width() - $width) / 2;
		var sctop = $(window).scrollTop() * 2;
		var top = ($(window).height() - $height + sctop) / 2;
		var height = document.getElementsByTagName("body")[0].scrollHeight;
		$("#lay_pop").css("left", left);
		$("#lay_pop").css("top", top);
		$("#lay_pop").css("display", "block");
		$("#lay_pop").css("z-index", "555");
		$("#all_body").css("display", "block");
		$("#all_body").css("width", $(window).width());
		$("#all_body").css("height", height);

	}
	function layerClose(lay1, lay2) {
		$("#" + lay1).css("display", "none");
		$("#" + lay2).css("display", "none");
	}
</script>