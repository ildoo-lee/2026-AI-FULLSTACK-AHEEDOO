<%@page import="java.sql.Connection"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%
//1. utf-8
request.setCharacterEncoding("UTF-8");

//2. 데이터받기
int ono = Integer.parseInt(request.getParameter("ono"));
String oname = request.getParameter("oname");
int onum = Integer.parseInt(request.getParameter("onum"));

try{
	Connection conn = null;	PreparedStatement pstmt = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
		
	String url = "jdbc:mysql://localhost:3306/mbasic";
	String sql = "update milk_order set oname=?, onum=? where ono=?"; //##
	conn = DriverManager.getConnection(url, "root", "1111");
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, oname);
	pstmt.setInt(2, onum);
	pstmt.setInt(3, ono); // Ip 주소가져오기
	
	//3-3 insert executeUpdate
	int result = pstmt.executeUpdate(); // insert, update, deldte 실행한 줄 수 
		
	//4. jsp012_milk.jsp 로 돌아가기
	if(result >0){  out.println("<script> alert('수정성공!'); location.href='jsp012_milks.jsp';</script>");
	}else{
		            out.println("<script> alert('수정실패!'); location.href='jsp012_milks.jsp';</script>");
	}
	
	if(pstmt != null){pstmt.close();}
	if(conn != null){conn.close();}
	
}catch( Exception e){ e.printStackTrace(); }



%>