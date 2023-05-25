<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	MemberVO member = new MemberVO();
	request.setAttribute("member", member);
%>

<%
	if(member.getMemId() != null){
%>
	<p><%= member.getMemId() %></p>	
<%
	}else{
%>
	<p>로그인 하셔야합니다.</p>
<%
	}
%>

<hr>

<c:choose>
	<c:when test="${ ! empty member.memId}">
		<p>${member.memId }</p>
	</c:when>
	<c:otherwise>
		<p>로그인 하셔야합니다.</p>
	</c:otherwise>
</c:choose>

<hr>

<c:set var="price" value="${5000 * 3}"/>
	<p>before : ${price}</p>

out : <c:out value="${price}"/>


<hr>
<%
	String attack = "<script>alert('You are 바보')</script>";
	request.setAttribute("attack", attack);
%>

<c:out value="${attack }"></c:out>

<hr>

<c:remove var="price"/>
remove : <c:out value="${price }"></c:out>

<hr>
<c:if test="${empty price }">
	<p>가격이 책정되지 않았습니다.</p>
</c:if>


<hr>


<c:set var="cost" value="${3000 }"/>
<c:choose>
	<c:when test="${cost > 10000 }">
		<p>제품가격 : 10000이상</p>
	</c:when>
	<c:when test="${cost > 5000 && cost < 10000 }">
		<p>제품가격 : 5000이상 10000미만</p>
	</c:when>
	<c:otherwise>
		<p>제품가격 : 50000미만</p>
	</c:otherwise>
</c:choose>

<hr>

<%
MemberVO member01 = new MemberVO();
member01.setMemId("nextit01");
member01.setMemNm("넥스트아이티01");

MemberVO member02 = new MemberVO();
member02.setMemId("nextit02");
member02.setMemNm("넥스트아이티02");

MemberVO member03 = new MemberVO();
member03.setMemId("nextit03");
member03.setMemNm("넥스트아이티03");

MemberVO member04 = new MemberVO();
member04.setMemId("nextit04");
member04.setMemNm("넥스트아이티04");

MemberVO member05 = new MemberVO();
member05.setMemId("nextit05");
member05.setMemNm("넥스트아이티05");

MemberVO member06 = new MemberVO();
member06.setMemId("nextit06");
member06.setMemNm("넥스트아이티06");

MemberVO member07 = new MemberVO();
member07.setMemId("nextit07");
member07.setMemNm("넥스트아이티07");

MemberVO member08 = new MemberVO();
member08.setMemId("nextit08");
member08.setMemNm("넥스트아이티08");

MemberVO member09 = new MemberVO();
member09.setMemId("nextit09");
member09.setMemNm("넥스트아이티09");

MemberVO member10 = new MemberVO();
member10.setMemId("nextit10");
member10.setMemNm("넥스트아이티10");

List<MemberVO> memberList = new ArrayList<>();
memberList.add(member01);
memberList.add(member02);
memberList.add(member03);
memberList.add(member04);
memberList.add(member05);
memberList.add(member06);
memberList.add(member07);
memberList.add(member08);
memberList.add(member09);
memberList.add(member10);

request.setAttribute("memberList", memberList);

%>

<c:forEach items="${memberList}" var="member" varStatus="status" begin="3" end="7" step="2">
	<p>인덱스 : ${status.index} / 순번 : ${status.count } </p>
	<p>아이디 : ${member.memId }</p>
	<p>이름 : ${member.memNm }</p>
	
	<p>시작값 : ${status.begin }</p>
	<p>종료값 : ${status.end }</p>
	<p>종료값 : ${status.step }</p>
	<p>현재 루프가 처음인지? : ${status.first }</p>
	<p>현재 루프가 미자막인지? : ${status.last }</p>
	<p>현재 아이템 : ${status.current}</p>	
	<hr>
	</c:forEach>






</body>
</html>