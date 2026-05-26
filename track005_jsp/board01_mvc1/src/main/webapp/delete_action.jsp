
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   

<% 

//1. bno, bpass 넘겨받기
request.setCharacterEncoding("UTF-8");

int bno = Integer.parseInt(request.getParameter("bno"));
String bpass = request.getParameter("bpass");



try{
//2. delete from mvcboard1 where bno=? and bpass=?
	Connection conn = null;	PreparedStatement pstmt = null;
    String sql = "delete from mvcboard1 where bno=? and bpass=?";
	String url = "jdbc:mysql://localhost:3306/mbasic";
    String user = "root", pass="1111";
    	    
    Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	pstmt = conn.prepareStatement(sql);	
	
	pstmt.setInt(1, bno);
	pstmt.setString(2, bpass);
		
//3. 삭제시 list.jsp / 삭제 실패시 비번입력폼 history.go(-1)
	int result = pstmt.executeUpdate();
	if(result >0){  out.println("<script> alert('삭제 성공!'); location.href='list.jsp?bno=" + bno + "';</script>");
	}else{
		out.println("<script> alert('비밀번호 확인!'); history.go(-1); </script>");
	}
	
	if(pstmt != null){pstmt.close();}
	if(conn != null){conn.close();}   

	}catch( Exception e){ e.printStackTrace(); }

%>