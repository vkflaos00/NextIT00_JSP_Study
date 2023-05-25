<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>nextit_교육 센터 입니다.</p>

<c:set var="name" value="nextit_교육 센터 입니다."/>

toUpperCase(string) : ${fn:toUpperCase(name) }<br><br>

toLowerCase(string) : ${fn:toLowerCase(name) }<br><br>

length(string) : ${ fn:length(name) }<br/><br>

substring(string,startIndex,endIndex) : ${fn:substring(fn:trim(name),0,9) }<br/><br>

substringAfter(string, subString) : ${fn:substringAfter(name, "_") }<br/><br>

substringBefore(string, subString) : ${fn:substringBefore(name, "_") }<br/><br>

replace(string, before, after) : ${fn:replace(name, "nextit" , "넥스트아이티") }<br/><br/>

indexOf(string, subString) : ${fn:indexOf(name, "_") }<br/><br/>

startsWith(string, prefix) : ${fn:startsWith(name, "nextit") }<br/><br/>

endsWith(﻿﻿string, suffix) : ${fn:endsWith(name, "입니다.") }<br/><br/>

contains(﻿string, subString) : ${fn:contains(name, "센터") }<br/><br/>

﻿fn:split(string, separator) : <c:set var="str_arr"  value="${fn:split( name, '_' ) }"/>
<c:forEach items="${str_arr }" var="item" varStatus="status">
	<pre>     split[${status.count }] :  ${item } </pre>
</c:forEach>

join(array, separator) : ${fn:join( str_arr , "-" ) }<br/><br/>

containsIgnoreCase(string, substring) : ${ fn:containsIgnoreCase( name , "it" ) }<br/><br/>

</body>
</html>