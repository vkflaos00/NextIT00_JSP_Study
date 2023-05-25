<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
02pageMove.jsp
<hr>

<%-- <%pageContext.forward("./03pageMove.jsp"); %> --%>
<%-- <jsp:forward page="./03pageMove.jsp"></jsp:forward> --%>

<%response.sendRedirect("./01pageMove.jsp");	 %>


</body>
</html>