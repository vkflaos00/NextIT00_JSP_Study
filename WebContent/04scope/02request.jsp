<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
02request.jsp

<!-- 인코딩 -->
<% request.setCharacterEncoding("utf-8"); %>

<%
	request.setAttribute("str", "nextIT");
	request.setAttribute("num", 8850);
%>
<%
	String str= (String)request.getAttribute("str");
	System.out.println("str : " + str);
	
	int num = (int)request.getAttribute("num");
	System.out.println("num : " + num);
%>

<form action="./03request.jsp" method="get">
	<input type="text" name="memId" value="">
	<input type="text" name="memPass" value="">
	<input type="submit" value="전송">
</form>

</body>
</html>