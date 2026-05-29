<%@page import="java.net.InetAddress" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   

<% /*-2) write.jsp (글쓰기 폼)    ->  write_action.jsp(글쓰기 처리)       */
//1. 데이터 넘겨받기   bname, bpass, btitle, bcontent / bip - InetAddress.getLocalHost()gethostAddress
request.setCharacterEncoding("UTF-8");
String bname = request.getParameter("bname");
String bpass = request.getParameter("bpass");
String btitle = request.getParameter("btitle");
String bcontent = request.getParameter("bcontent");
//out.println(bname+ "/"+~)

//2. sql 처리
try{
	    Connection conn = null;	PreparedStatement pstmt = null;
	    String sql = "insert into mvcboard1 (bname, bpass, btitle, bcontent, bip) values (?,?,?,?,?)";
		String url = "jdbc:mysql://localhost:3306/mbasic";
	    String user = "root", pass="1111";
	    
	    
	    Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pass);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, bname);
		pstmt.setString(2, bpass);
		pstmt.setString(3, btitle);
		pstmt.setString(4, bcontent);
		pstmt.setString(5, InetAddress.getLocalHost().getHostAddress()); // Ip 주소가져오기
		
		//3-3 insert executeUpdate
	    int result = pstmt.executeUpdate(); // insert, update, deldte 실행한 줄 수 
			
		//4. jsp012_milk.jsp 로 돌아가기
		if(result >0){  out.println("<script> alert('글쓰기 성공!'); location.href='list.jsp';</script>");
		}else{
			out.println("<script> alert('글쓰기 실패!'); location.href='list.jsp';</script>");
		}
		
		if(pstmt != null){pstmt.close();}
		if(conn != null){conn.close();}

	}catch( Exception e){ e.printStackTrace(); }

%>