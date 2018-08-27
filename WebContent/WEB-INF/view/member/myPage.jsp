<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>


<div class="w3-panel w3-padding-small w3-black">
<h4>My Cinema</h4>
<p><b>${person.name }</b>님 환영합니다!</p>
</div>

<div class="w3-container">
  <h2>Cards</h2>
  <p>Create paper-like cards with the w3-card classes:</p>

  <div class="w3-panel w3-card"><p>회원등급</p></div>
  <div class="w3-panel w3-card-2"><p>예매/구매내역</p></div>
  <div class="w3-panel w3-card-4"><p></p></div>
</div>

<!-- 나의 문의내역, 나의 정보관리 -->

<div class="w3-panel w3-padding-64 w3-light-gray">
  <h4><b>※유의사항</b></h4>
  <p>
  	<b>[환불안내]</b><br/>
	 - 신용카드<br/>
	결제 후 3일 이내 취소시 승인취소 가능합니다.<br/>
	3일 이후 예매 취소 시 영업일 기준 3일 ~7일 이내 카드사에서 환불됩니다.<br/>
	 - 체크카드<br/>
	결제 후 3일 이내 취소 시 당일 카드사에서 환불 처리됩니다.<br/>
	3일 이후 예매 취소 시 카드사에 따라 3일 ~ 10일 이내 카드사에서 환불됩니다.<br/>
	익월 취소의 경우 29시네마 고객센터(1544-2929)로 문의 주시기 바랍니다.<br/>
	<b>[예매취소 안내]</b><br/>
	온라인 예매 취소는 상영 20분 전까지 가능하며, 20분 이전부터는 현장 취소만 가능합니다.<br/>
	(단, 무대인사 취소는 영화 시작 24시간 전 까지만 가능합니다.)<br/>
	예고편과 광고 상영으로 실제 영화 시작 시간이 10분 정도 차이 날 수 있습니다.<br/>
  </p>
</div>