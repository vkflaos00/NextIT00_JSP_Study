<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
11Cookie.jsp
<hr>

<%

//쿠키생성
//Cookie cookie = new Cookie("memId", memId);
//cookie.setComment("회원명");
//cookie.setMaxAge(60*60*24);//초단위, 60*60*24 =>  1일
//cookie.setHttpOnly(true); //보안 관련 ( XSS 공격을 차단할 수 있다.)
//cookie.setSecure(true); //보안 관련 (SSL 통신에서만 쿠키 사용)
//response.addCookie(cookie);

String memId = request.getParameter("memId");
System.out.println("memId : "+ memId);
out.print("memId: "+ memId);

if(memId != null && ! memId.equals("")){
	out.print("<h4>로그인되었습니다.</h4>");
	out.print("<a href='./12Cookie.jsp'>회원전용</a>");
	Cookie cookie = new Cookie("memId", memId);
	cookie.setComment("회원명");
	cookie.setMaxAge(60*60*24);//초단위, 60*60*24 =>  1일
	cookie.setHttpOnly(true); //보안 관련 ( XSS 공격을 차단할 수 있다.)
	//cookie.setSecure(true); //보안 관련 (SSL 통신에서만 쿠키 사용)
	response.addCookie(cookie);
}else{
	out.print("<h4>로그인 하셔야 합니다.</h4>");
}


%>









</body>
</html>