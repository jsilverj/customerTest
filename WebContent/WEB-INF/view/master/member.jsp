<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!--  Sidebar 
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 25%">
	<h3 class="w3-bar-item">Master Menu</h3>
	<a href="#" class="w3-bar-item w3-button">member</a> <a href="#"
		class="w3-bar-item w3-button">info</a> <a href="#"
		class="w3-bar-item w3-button">customer</a> <a href="#"
		class="w3-bar-item w3-button">question</a>
</div> -->

<!--  Page Content 
<div style="margin-left: 25%"> -->
	<form action="/master/mdeleteid.do" class=w3-container w3-card-4
		w3-light-grey w3-text-black w3-margin"
	method="post"
		autocomplete="off">
		<h2 class="w3-center">회원삭제</h2>

		<div class="w3-row w3-section">
			<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-envelope-o"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" name="id" type="text"
					placeholder="email" required autocomplete>
			</div>
		</div>


		<button
			class="w3-button w3-block w3-section w3-black w3-ripple w3-padding"
			type="submit">Send</button>

	</form>


	<form action="/master/mupdateid.do" class=w3-container w3-card-4
		w3-light-grey w3-text-black w3-margin"
	method="post"
		autocomplete="off">
		<h2 class="w3-center">회원 등급변경</h2>

		<div class="w3-row w3-section">
			<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-envelope-o"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" name="id" type="text"
					placeholder="email" required autocomplete>
			</div>
		</div>

		<div class="w3-row w3-section">
			<div class="w3-col" style="width: 50px">
				<i class="w3-xxlarge fa fa-pencil"></i>
			</div>
			<div class="w3-rest">
				<input class="w3-input w3-border" name="no" type="text"
					placeholder="grade" required autocomplete>
			</div>
		</div>

		<button
			class="w3-button w3-block w3-section w3-black w3-ripple w3-padding"
			type="submit">Send</button>

	</form>


<!-- </div> -->


