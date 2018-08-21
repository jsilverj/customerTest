<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div>

<%-- 	<div id="nav" style="background-color:#FAF4C0; text-align:right; height:40px">
		<tiles:insertAttribute name="nav" />
	</div>


	<div id="contents">
		<tiles:insertAttribute name="contents" />
	</div> --%>
	
	<div id="nav">
		<tiles:insertAttribute name="nav" />
	</div>


	<div id="contents">
		<tiles:insertAttribute name="contents" />
	</div>
</div>
