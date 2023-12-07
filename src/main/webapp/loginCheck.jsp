<%@page import="org.apache.catalina.valves.CrawlerSessionManagerValve"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<%
		String sessionId = (String) session.getAttribute("sessionid");
		String name = "";
		
		if(sessionId == null){
			out.println("로그인 페이지로 이동하세요!!");
		} else {
			out.println(sessionId + "님 로그인 중<br>");
			Enumeration ssion = session.getAttributeNames();
			
			while(ssion.hasMoreElements()) {
				name = ssion.nextElement().toString();
				out.println("세션내 속성 이름:"+name+"<br>");
				String sessionValue = (String) session.getAttribute(name);
				out.println("세션내 속성 값:"+sessionValue+"<br>");
			}
		}
	%>
	<hr>
	<a href="sessionTest.jsp">세션테스트로 가기</a>
</body>
</html>