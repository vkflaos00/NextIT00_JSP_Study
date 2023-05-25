<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--01jsp_include  -->

<div>
	<div>
		<!-- 헤더 -->
		<jsp:include page="./header.jsp"></jsp:include>
	</div>
	<div>
		<h3>The main content</h3>
	</div>
	<div>
		<!-- 푸터 -->
		<jsp:include page="./footer.jsp"></jsp:include>
	</div>

</div>

</body>
</html>