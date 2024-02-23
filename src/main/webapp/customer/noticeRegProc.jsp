
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>noticeRegProc.jsp</h3>

<!-- 데이터 인서트, notice.jsp돌아가기 -->

<%
/* request.setCharacterEncoding("utf-8");
String title=request.getParameter("title");
String content=request.getParameter("content");

//Notice객체생성
Notice n=new Notice();
n.setTitle(title);//title주입
n.setContent(content);

//NoticeDao 객체생성
NoticeDao dao=new NoticeDao();
dao.write(n);

//목록으로가기
response.sendRedirect("notice.jsp"); */
%>

</body>
</html>

