<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@include file="inc/header.jsp" %>

<%

request.setCharacterEncoding("UTF-8");
String session_email = (String)session.getAttribute("session_email");


String nickname = "", bpass = "", email = "", mobile = "", udate = "", bip = "";


try{
	Connection conn = null;	PreparedStatement pstmt = null; ResultSet rset = null;
	
	
	String sql = "select * from users where email=?";
	String url = "jdbc:mysql://localhost:3306/mbasic";
    String user = "root", pass="1111";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	
	pstmt = conn.prepareStatement(sql); 
	pstmt.setString(1, session_email);
	
	rset = pstmt.executeQuery(); // 표
	
	if(rset.next()){
		nickname = rset.getString("nickname");
		bpass = rset.getString("bpass"); 
		email = rset.getString("email"); 
		mobile = rset.getString("mobile"); 
		udate = rset.getString("udate"); 
		bip = rset.getString("bip"); 
	}
	
	if(rset != null){rset.close();}
	if(pstmt != null){pstmt.close();}
	if(conn != null){conn.close();}
	
}catch(Exception e){ e.printStackTrace(); }
%>
   
   <div class="container card my-5">
      <h3 class="card-header">마이페이지</h3>
      <form action="#" method="post">
			
			<div class="my-3">
				<label for="nickname">닉네임</label>
				<input type="text" class="form-control" value="<%=nickname%>" id="nickname" name="nickname" readonly />
			</div>
			
			<div class="my-3">
				<label for="bpass">비밀번호</label>
				<input type="text" class="form-control" value="<%=bpass%>" id="bpass" name="bpass" readonly />
			</div> 
			
			<div class="my-3">
				<label for="email">이메일</label>
				<input type="text" class="form-control" value="<%=email%>" id="email" name="email" readonly/>
			</div>
			
			<div class="my-3">
				<label for="mobile">휴대폰</label>
				<input type="text" class="form-control" value="<%=mobile%>" id="mobile" name="mobile" readonly/>
			</div>
			
			<div class="my-3">
				<label for="udate">가입일</label>
				<input type="text" class="form-control" value="<%=udate%>" id="udate" name="udate" readonly/>
			</div>
			
			<div class="my-3">
				<label for="bip">IP</label>
				<input type="text" class="form-control" value="<%=bip%>" id="bip" name="bip" readonly/>
			</div>
			
			<div class="my-3 text-end">
			    <a href="#" class="btn btn-primary" title="정보수정">수정</a>
			    <a href="#" class="btn btn-primary" title="회원탈퇴">삭제</a>
			    <a href="list.jsp" class="btn btn-primary" title="목록보러가기">목록</a>
			</div>     
      </form>
   </div>

<%@include file="inc/footer.jsp" %>