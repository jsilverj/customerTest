<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <style>
form.ab{
	align:center;
	width:60%;
}
</style> -->
<div class="w3-cell-row">
<div class="w3-container w3-col s2">
</div>
<div class="w3-container w3-col s8">
<form action="/question/sended.do"
	class="<!-- ab --> w3-container w3-card-4 w3-light-grey w3-text-black w3-margin"
	method="post" enctype="multipart/form-data" autocomplete="off">
	<h2 class="w3-center">1:1 문의사항</h2>
	<input type="hidden" name="receiver" value="master@naver.com" readonly>
	<div class="w3-row w3-section">
		<div class="w3-col" style="width: 50px">
			<i class="w3-xxlarge fa fa-user"></i>
		</div>
		<div class="w3-rest">
			<input class="w3-input w3-border" name="name" type="text"
				value="master" readonly>
		</div>
	</div>

	<div class="w3-row w3-section">
		<div class="w3-col" style="width: 50px">
			<i class="w3-xxlarge fa fa-user"></i>
		</div>
		<div class="w3-rest">
		
			<input class="w3-input w3-border" name="sendername" type="text"
				value="${auth.name }" readonly>
		</div>
	</div>

	<div class="w3-row w3-section">
		<div class="w3-col" style="width: 50px">
			<i class="w3-xxlarge fa fa-envelope-o"></i>
		</div>
		<div class="w3-rest">
			<input class="w3-input w3-border" name="writer" type="text"
				value="${auth.email}" readonly>
		</div>
	</div>

	<div class="w3-row w3-section">
		<div class="w3-col" style="width: 50px">
			<i class="w3-xxlarge fa fa-phone"></i>
		</div>
		<div class="w3-rest">
			<input class="w3-input w3-border" name="title" type="text"
				placeholder="title">
		</div>
	</div>

	<div class="w3-row w3-section">
		<div class="w3-col" style="width: 50px">
			<i class="w3-xxlarge fa fa-pencil"></i>
		</div>
		<div class="w3-rest">
			<textarea class="w3-input w3-border" name="content" type="text"
				placeholder="Message"></textarea>
		</div>
	</div>
	<div class="w3-row w3-section">
		<div class="w3-col" style="width: 50px">
			<i class="w3-xxlarge fa fa-file"></i>
		</div>
		<div class="w3-rest">
			<input class="w3-input w3-border" name="attach" type="file"
				style="display: none;" id="ori"> <input
				class="w3-input w3-border" type="text" placeholder="File" readOnly
				id="fake">
			<script>
				$("#fake").on("click", function() {
					$("#ori").trigger("click");
				});
				$("#ori").on("change", function() {
					$("#fake").val(this.files[0].name);
				});
			</script>
		</div>
	</div>


	<button
		class="w3-button w3-block w3-section w3-black w3-ripple w3-padding"
		type="submit">Send</button>

</form>
</div>
<div class="w3-container w3-col s2">
</div>
</div>

