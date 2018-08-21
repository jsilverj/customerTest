<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>
<div style="height: 80px">
</div>
<div align="center">
<h1>Account</h1>
<br/>

<form class="w3-container" action="/joining.do" method="post">

<div align="center" style="width:500px">
<label>- Email</label>
<input class="w3-input" type="text" name="email" required />

<label>- Password</label>
<input class="w3-input" type="text" name="pass" required />

<label>- Name</label>
<input class="w3-input" type="text" name="name" required />

<label>- Phone</label>
<input class="w3-input" type="text" name="phone" required />

<label>- Address</label>
<input class="w3-input" type="text" name="address" required />

<label>- Birth</label>
<input class="w3-input" type="text" name="birth" required />

</div>

  <p><button class="w3-button w3-black w3-round-large"
  		type="submit">complete</button>
  <button class="w3-button w3-black w3-round-large"
  		type="reset">reset</button>
  </p>
	
</form>
</div>
