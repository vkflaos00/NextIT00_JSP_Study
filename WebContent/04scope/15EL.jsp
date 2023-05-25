<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
15EL.jsp
<%
String memId= request.getParameter("memId");

request.setAttribute("memId", "request_"+memId);
session.setAttribute("memId", "session_"+memId);
application.setAttribute("memId", "application_"+memId);
%>

<%
pageContext.forward("./16EL.jsp");

%>



</body>
</html>