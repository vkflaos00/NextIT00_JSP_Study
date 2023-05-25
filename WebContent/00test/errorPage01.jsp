<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

문제가 발생 되었습니다.
전산실에 문의 부탁드립니다. (042-719-8850)

<%
	System.out.println("예외 클래스 : " + exception.getClass().getName());
	System.out.println("예외 내용 : " + exception.getMessage());
%>

</body>
</html>