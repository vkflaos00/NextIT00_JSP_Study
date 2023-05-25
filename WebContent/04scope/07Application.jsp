<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
07Application.jsp

<hr>
<%
String id = application.getInitParameter("ID");
out.print("ID : "+ id +"<br>");
%>

<hr>
<%
Enumeration<String> paramNames = application.getInitParameterNames();
while(paramNames.hasMoreElements()){
	String paramName  = paramNames.nextElement();
	String paramValue = application.getInitParameter(paramName);
	out.print(paramName + " : "+ paramValue + "<br>");
}
%>


</body>
</html>