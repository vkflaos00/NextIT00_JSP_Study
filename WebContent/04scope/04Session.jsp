<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
04Session.jsp

<%
request.setAttribute("str1", "nextit1");
request.setAttribute("num1", 8850);

session.setAttribute("str2", "nextit2");
session.setAttribute("num2", 8851);
%>
<%
/* pageContext.forward("./05Session.jsp"); */
%>
<hr>
<a href="./05Session.jsp">05Session.jsp이동</a>

<hr>
<p>로그인</p>
<form action="./05Session.jsp" method="get">
	<input type="text" name="memId">
	<input type="text" name="memPass">
	<input type="submit" value="전송">
</form>



</body>
</html>