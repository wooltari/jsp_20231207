<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String memberid = request.getParameter("memberid");
		String memberpw = request.getParameter("memberpw");
		
		if(memberid.equals("tiger") && memberpw.equals("12345")){
			session.setAttribute("sessionid", memberid);
			session.setAttribute("sessionpw", memberpw);
			
			out.println("로그인 성공");	
	%>
			<a href="loginCheck.jsp">로그인 성공 -> 로그인 체크 페이지로 이동</a>	
	<%	
		} else {
			out.println("로그인 실패");
	%>
			<a href="loginCheck.jsp">로그인 실패 -> 로그인 체크 페이지로 이동</a>	
	<%
		}
	%>

</body>
</html>