<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%
//1. 데이터 넘겨 받기 utf-8
request.setCharacterEncoding("UTF-8");
int ono = Integer.parseInt(request.getParameter("ono"));
//out.println(ono);

//2. sql - delete from milk_order where one=?
//String oname = request.getParameter("oname");
//int onum = Integer.parseInt(request.getParameter("onum"));

try{
	Connection conn = null;	PreparedStatement pstmt = null;
	String url = "jdbc:mysql://localhost:3306/mbasic";
	String sql = "delete from milk_order where ono=?"; //##
	
	//드라이버 연동
	Class.forName("com.mysql.cj.jdbc.Driver");
		
	
	
	// jdbc 연동
	conn = DriverManager.getConnection(url, "root", "1401");
	
	//sql 처리
	pstmt = conn.prepareStatement(sql);
	//pstmt.setString(1, name);
	//pstmt.setInt(2, onum);
	pstmt.setInt(1, ono); // Ip 주소가져오기
	
	//3-3 insert executeUpdate
	int result = pstmt.executeUpdate(); // insert, update, deldte 실행한 줄 수 
		
	//4. jsp012_milk.jsp 로 돌아가기
	if(result >0){  out.println("<script> alert('삭제성공!'); location.href='jsp012_milks.jsp';</script>");
	}else{
		            out.println("<script> alert('삭제실패!'); location.href='jsp012_milks.jsp';</script>");
	}
	
	if(pstmt != null){pstmt.close();}
	if(conn != null){conn.close();}
	
}catch( Exception e){ e.printStackTrace(); }



%>