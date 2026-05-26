<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@include file="inc/header.jsp" %>

   <!--  header -->
   <!--  header -->
   
<%
//1. bno넘겨받기 종속 페이지여서 독자적으로 실행되지 않고 에러나 감
request.setCharacterEncoding("UTF-8");
int bno = Integer.parseInt(request.getParameter("bno"));
String bname = "", btitle="", bcontent=""; int bhit=0;
//2. sql 구문 2개처리
try{
	Connection conn = null;	PreparedStatement pstmt = null;
	ResultSet rset = null;
	
	//String sql1="update mvcboard1 set bhit=bhit+1  where bno=?";
	String sql2="select * from mvcboard1  where bno=?";
	
	//String sql = "insert into mvcboard1 (bname, bpass, btitle, bcontent, bip) values (?,?,?,?,?)";
	String url = "jdbc:mysql://localhost:3306/mbasic";
    String user = "root", pass="1111";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass); //2. jdbc연동
	
	//3. sql 구문처리
	//pstmt = conn.prepareStatement(sql1); pstmt.setInt(1, bno);
	
	//int result = pstmt.executeUpdate();
	//if(result >0){  pstmt.close();}
	
	pstmt = conn.prepareStatement(sql2); pstmt.setInt(1, bno);
	rset = pstmt.executeQuery(); //표
	
	if(rset.next()){ // 줄
	bname = rset.getString("bname");
	btitle = rset.getString("btitle"); 
	bcontent = rset.getString("bcontent"); 
	bhit = rset.getInt("bhit"); 
	} //칸
	
	//4. jdbc 끊기
	if(rset != null){rset.close();}
	if(pstmt != null){pstmt.close();}
	if(conn != null){conn.close();}
	
	
}catch( Exception e){ e.printStackTrace(); }




%>
   
   
   <div class="container card my-5">
      <h3 class="card-header">글 수정하기</h3>
      <form action="edit_action.jsp?bno=<%=bno %>" method="post"  onsubmit="return checkFrom()">
    
		    <div class="my-3">
		        <label for="bno">+ 글번호</label>
		        <input type="text" class="form-control" value="<%=bno%>" name="bno" readonly />
		    </div>
		
		    <div class="my-3">
		        <label for="bname">+ 조회수</label>
		        <input type="text" class="form-control" value="<%=bhit%>" id="bhit" name="bhit" readonly />
		    </div>
			
			<div class="my-3">
				<label for="bname">+ 이름</label>
				<input type="text" class="form-control" value="<%=bname%>" id="bname" name="bname" readonly />
			</div> 
			
			<div class="my-3">
				<label for="bpass">비밀번호</label>
				<input type="password" class="form-control" id="bpass" name="bpass" />
			</div>
			
			<div class="my-3">
				<label for="btitle">+ 제목</label>
				<input type="text" class="form-control" value="<%=btitle%>" id="btitle" name="btitle" />
			</div>
			
			<div class="my-3">
			    <label for="bcontent">+ 내용</label>
			    <textarea class="form-control" id="bcontent" name="bcontent" style="height: 300px;" ><%=bcontent%></textarea>
			</div>
			
			<div class="my-3 text_end">
			    <a href="list.jsp" class="btn btn-primary" title="목록보러가기">목록</a>
			    <button type="submit" class="btn btn-primary" title="글수정">수정</button>
			</div>     
      </form>
      
       
   </div>
   
   <!--  footer -->
   <!--  footer -->

<%@include file="inc/footer.jsp" %>


