<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="${pageContext.servletContext.contextPath }/js/jquery-3.3.1.min.js"></script>
<!-- http://zzaps.tistory.com/67 jquery 설명 -->
<style>
.menu a {
	cursor: pointer;
	background-color: #ffffff;
	border-bottom: 1px solid #cccccc;
}

.menu .hide {
	display: none;
	background-color: #e6e6e6;
}

ul {
	list-style-type: none;
	width: 40%;
}

ul.hide {
	list-style-type: none;
	border-bottom: 1px solid #cccccc;
}

span {
	margin-right: 30px;
	text-align: left;
}
</style>

<div>
	<ul>
		<c:forEach var="a" items="${all}" varStatus="all">
			<li class="menu"><a id="${a.num }"><span>${a.category }</span>${a.title }</a>
				<ul class="hide">
					<li>${a.content }</li>
				</ul></li>
		</c:forEach>
	</ul>
</div>


<script>
	$(document).ready(function() { //ready()는 웹페이지 로딩이 끝나는 시점에 실행되는 메소드 
		$(".menu>a").click(function() { //menu클래스의 바로 하위 태그인 a 태그가 클릭되었을 떄 
			$(this).next("ul").toggleClass("hide");
			//toggleClass()는 요소에 새로운 클래스를 제거하거나 추가할 수 있음
			//a태그의 다음 순서에 있는 ul태그에 속해있는 hide라는 클래스명 삭제
			//다시 누르면 위 함수가 실행되며 hide클래스가 없기 떄문에 다시 나타나게됨

				//이걸 다른 함수로 만들어서 함수를 실행 시켜야 할까
				$.ajax({
					"url" : "/customer/count.do", //전송 경로
					"method" : "post", //전송 방법
					"data" : {"num":$("#a")} ,
					async : true;
				}).done(function(r) {
					//정상적으로 찍으면 r이 나오는 것
					console.log(r + "/" + r.num); //값을 무조건 text로 받는 건 아님
				});
		});

	});
</script>




