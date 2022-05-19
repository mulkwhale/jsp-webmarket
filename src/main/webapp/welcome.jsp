<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
	    <div class="container">
	        <div class="navbar-header">
	        	<a class="navbar-brand" href="./welcome.jsp">Home</a>
	        	<a class="navbar-brand" href="./welcome.jsp">Home</a>
	        </div>
	    </div>
	</nav>
	<%!
	// 변수, 메서드 선언. 전역 변수
	String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";
	%>
	<%
	// 그냥 java 코드. 여기서 변수 선언 가능
	//out.println("<h1>Hello World!!!!!!!</h1>");
	%>
	<!-- p-5 : 전체 패딩 5 (굉장히 많이) (3 : 보통) -->
	<!-- bg-primary : 기본 색상 -->
	<!-- text-white : 글자 하얗게 -->
	<div class="p-5 bg-primary text-white">
	<!-- container : 좌우 가운데 정렬 -->
    	<div class="container">
    	<!-- display-3 : 큰 글자 중에 보통 크기 -->
	        <h1 class="display-3">
	        	<%= greeting %>
	        </h1>
	    </div>
	</div>
	<div class="container">
	    <div class="text-center">
	        <h3>
	        	<%= tagline %>
	        </h3>
	        <%
	        Date today = new Date();
	        
	        SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
	        
	        out.println("현재 접속 시간: " + format.format(today));
	        %>
	    </div>
	</div>
	
	<footer class="container">
		<p>&copy; WebMarket</p>
	</footer>
</body>
</html>