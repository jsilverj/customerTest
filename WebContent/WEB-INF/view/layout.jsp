<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>


<html>
<head>
<title>TILES-template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div>
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
</div>
</body>
</html>
