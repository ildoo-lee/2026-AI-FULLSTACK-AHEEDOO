<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<% 
/*  jsp016_result.jsp */
//1. 데이터 넘겨받기
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String bpass = request.getParameter("bpass");

try{
	//2. sql 구문정리 - select * from users where email=? and bpass=?
	Connection conn = null; PreparedStatement pstmt = null; ResultSet rset = null;
	
	String sql = "select * from users where email=? and bpass=?";
	String url = "jdbc:mysql://localhost:3306/mbasic";
	String user = "root", pass="1111";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, email);
	pstmt.setString(2, bpass);
	
	rset = pstmt.executeQuery();
			
	
			
	//3. 로그인 성공시 - session 설정 (session.setAttribute) / jsp016_login.jsp 페이지 넘어가기
	if(rset.next()){
		session.setAttribute("email", email);
		out.println("<script>alert('로그인 성공!'); location.href='jsp016_login.jsp';</script>");
	} else {
		out.println("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); history.back();</script>");
	}
	if(rset != null){rset.close();}
	if(pstmt != null){pstmt.close();}
	if(conn != null){conn.close();}
}catch( Exception e){ e.printStackTrace(); }

%>