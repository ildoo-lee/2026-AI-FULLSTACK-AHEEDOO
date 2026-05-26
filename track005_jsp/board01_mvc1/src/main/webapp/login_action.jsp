<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   

<%
// 1. 데이터 넘겨받기
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String bpass = request.getParameter("bpass");

// 로그인 성공 여부(0 실패, 1 성공)
int loginResult = 0;
String nickname = "";


try{
	    Connection conn = null;	PreparedStatement pstmt = null; ResultSet rset = null;
	    
	    // 입력한 이메일, 비밀번호가 일치 확인
	    String sql = "select * from users where email=? and bpass=?";
		String url = "jdbc:mysql://localhost:3306/mbasic";
	    String user = "root", pass="1111";
	    
	    Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pass);
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, bpass);
		
		rset = pstmt.executeQuery(); // 표
		
		// 일치 - 로그인
		if(rset.next()){
			loginResult = 1; 
			nickname = rset.getString("nickname"); // 1이면 저장
			
			session.setAttribute("session_nickname", nickname);
			session.setAttribute("session_email", email);
		}
			
		
		if(loginResult > 0){  
			out.println("<script> alert('" + nickname + "님 로그인 성공!'); location.href='list.jsp';</script>");
		}else{
			out.println("<script> alert('로그인 실패! 이메일이나 비밀번호를 확인해주세요.'); location.href='login.jsp';</script>");
		}
		
		if(rset != null){rset.close();}
		if(pstmt != null){pstmt.close();}
		if(conn != null){conn.close();}

	}catch( Exception e){ e.printStackTrace(); }

%>