<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<title>FAQ</title>


<div id="nav">
	<tiles:insertAttribute name="navbar" />
</div>

<div id="customTitle" align="center">
	<tiles:insertAttribute name="customTitle" />
</div>

<div id="top5" align="center">
	<tiles:insertAttribute name="top5" />
</div>
<br />
<br />
<div id="faq" align="center">
	<tiles:insertAttribute name="faq" ignore="true" />
</div>
<br />
<br />
