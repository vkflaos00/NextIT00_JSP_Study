<%@page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8" errorPage="./errorPage01.jsp"%>
<html>
<head>
<title> hello world</title>
</head>
<body>
<hr>
<h4><span style="color: red;">안녕하세요</span></h4>
<hr>
<h4><span style="color: orange;"><%=new java.util.Date()%>부터 Jsp,Spring 수업을 함께 합니다.</span></h4>
<hr>
<h4><span style="color: blue;">열심히해서 멋진 웹사이트 만들고 좋은곳에 취업할 수 있도록  합시다. </span></h4>
<hr>
<h4><span style="color: green;">화이팅!</span></h4>
<hr>

<%
	String str = null;
	System.out.println(str.toString());
%>

</body>
</html>