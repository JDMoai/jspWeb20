<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>logoutProc.jsp</h3>
<%
//세션제거
session.invalidate();//모든세션제거
response.sendRedirect("loginForm.jsp");

%>
</body>
</html>