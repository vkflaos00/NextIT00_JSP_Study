<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
09Response.jsp
<hr>

<%
String memId = request.getParameter("memId");
String memPass = request.getParameter("memPass");
System.out.println("memId : "+ memId);
System.out.println("memPass : "+ memPass);

if(memId != null && memPass != null 
	&& ! memId.equals("") && ! memPass.equals("")){
	session.setAttribute("session_memId", memId);
	out.print("<h1>로그인 되었습니다</h1>");
}else{
	request.setAttribute("login", false);
	out.print("<h1>로그인 하셔야 합니다.</h1>");

	//response.sendRedirect("/study/04scope/08Response.jsp");

	System.out.println("request.getContextPath() : "+request.getContextPath());
	response.sendRedirect(request.getContextPath()+"/04scope/08Response.jsp");
	
	/*HttpServletRequest httpServletRequest 
		= (HttpServletRequest)pageContext.getRequest();
	System.out.println("httpServletRequest.getContextPath() : "
		+httpServletRequest.getContextPath());
	response.sendRedirect(httpServletRequest.getContextPath()+"/04scope/08Response.jsp");
	*/
}

//response.setCharacterEncoding("ISO-8859-1");
response.setCharacterEncoding("utf-8");

//response.setContentType("text/plain");
response.setContentType("text/html");
%>



</body>
</html>