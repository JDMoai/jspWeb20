
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
<h3>noticeEditProc.jsp</h3>
<%
/* request.setCharacterEncoding("utf-8");
String seq=request.getParameter("c");
String title=request.getParameter("title");
String content=request.getParameter("content");

Notice n=new Notice();
n.setSeq(seq);
n.setTitle(title);
n.setContent(content);

NoticeDao dao=new NoticeDao();
dao.update(n);


//디테일로 보내기
response.sendRedirect("noticeDetail.jsp?c="+seq);
 */
%>

</body>
</html>