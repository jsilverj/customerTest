<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<head>
<title>movie</title>
</head>
<body>
	<div id="nav">
		<tiles:insertAttribute name="nav" />
	</div>

	<div id="logo">
		<tiles:insertAttribute name="logo"/>
	</div>

	<div id="menu">
		<tiles:insertAttribute name="menu"/>
	</div>
	
	<div id="contents">
		<tiles:insertAttribute name="contents" />
	</div>
	
	<div id="contents2" style="margin-top: 50px;">
		<tiles:insertAttribute name="contents2" />
	</div>
	
</body>
</html>