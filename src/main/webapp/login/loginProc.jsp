<%@page import="customer.db.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<h3>loginProc.jsp</h3>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pass=request.getParameter("password");

Connection con=DBCon.getConnection();
String sql ="select pwd from member2 where id=?";

//실행
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, id);
ResultSet rs = pstmt.executeQuery();

//로그인경우의수
String ypass="";
int x=-1;
String msg ="";

if(rs.next()){
	ypass=rs.getString("pwd");
	if(ypass.equals(pass))
		x=1;//로그인성공
		
		else
			x=0;
	
}else{//아이디없음
	x=-1;	
}
System.out.println("x:"+x);

if(x==1){//로그인에성공했다면
	session.setAttribute("sessionId", id);
	msg="../mainForm.jsp";	
}else if(x==0){//로그인실패했다면
	msg="./loginForm.jsp?msg=0";	
}else{//아이디가없다면
	msg="./loginForm.jsp?msg=-1";	
}
response.sendRedirect(msg);
%>
</body>
</html>