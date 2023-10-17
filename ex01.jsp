<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ex01.jsp  -->


	<%
	
	Calendar now = Calendar.getInstance();
	
	%>


	<p>현재 시간: <%= String.format("%tT", now) %></p>
	
	
	<hr>
	<div>
		&copy;Copyright 2023 test.com All rights reserved.
	</div>



</body>
</html>