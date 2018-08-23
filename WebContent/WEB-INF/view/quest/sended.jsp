<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="w3-container" style="height: 200px;"></div>
<div class="w3-cell-row">
<div class="w3-container w3-col s2">
</div>
<div class="w3-container w3-col s8">
<form action="/question/send.do"
	class="<!-- ab --> w3-container w3-card-4 w3-light-grey w3-text-black w3-margin"
	method="post" enctype="multipart/form-data" autocomplete="off">
  <!-- <p>
  </p> -->
  <p class="w3-wide">
  	${auth.name }님이 작성하신 ${qvo.title }이 </br>
  	접수 완료 되었습니다.
  </p>

<button
		class="w3-button w3-block w3-section w3-black w3-ripple w3-padding"
		type="submit">되돌아가기</button>
</form>
</div>
<div class="w3-container w3-col s2">
</div>
</div>