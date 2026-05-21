<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSP</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!-- header -->
<!-- header -->
<!-- https://validator.w3.org/nu/#textarea 여기서 에러체크하면서 해야--> 
<!-- https://www.w3schools.com/bootstrap5/bootstrap_jumbotron.php -->
<!-- bg-primary 파랑  bg-danger 빨강  bg-warning 노랑 -->

<div class="p-5 bg-primary text-white">
  <h1>Milk Order Project</h1>
  <p>MVC1 - PreparedStatement Ex</p>
</div>


<!-- 메뉴판 테이블 -->
<!-- 메뉴판 테이블 -->
<!-- https://www.w3schools.com/bootstrap5/bootstrap_tables.php -->
   <div class="container card my-5 bg-primary text-white">
      <h2 class="card-header">Milk Menu</h2>
      
       <table class="table table-bordered table-striped table-hover">
       	<caption>우유메뉴</caption>
       	<thead>
       		<tr>
       			<th scope="col">NO</th>
       			<th scope="col">NAME</th>
       			<th scope="col">PRICE</th>
       		</tr>
       	
       	</thead>
       	
       	<tbody>
       	<% 
       	try{
       	//1. 드라이버 연동
       	Class.forName("com.mysql.cj.jdbc.Driver");
       	Connection conn = null;
       	PreparedStatement pstmt = null;
       	ResultSet rset = null;
       	
       	//2. JDBC 연동
		conn = DriverManager.getConnection(
       			                    "jdbc:mysql://localhost:3306/mbasic",   // url
       			                    "root",   // user
       			                    "1401");  // pass
       	       	
       	//3. PreparedStatement pstmt 이용해서 milk 테이블의 데이터가져오기
       	//   가격이 낮은 순으로
       	pstmt = conn.prepareStatement("select * from milk order by mprice asc");
      	
        rset = pstmt.executeQuery(); // 표
        while(rset.next()){ //줄
        	out.println("<tr><td>"   + rset.getInt("mno")+"</td><td>"
        			                 + rset.getString("mname")+"</td><td>"
        			                 + rset.getInt("mprice")+"</td></tr>"  );
        }
       	   			                    
       	//4. JDBC 끊기
      	if(rset != null){rset.close();}
    	if(pstmt != null){pstmt.close();}
    	if(conn != null){conn.close();}
    	}catch( Exception e){ e.printStackTrace(); }
       	/*
       	alter table milk modify mnum int null;
       	alter table milk modify mtotal int null;
       	
       	insert into milk (mno, mname, mpirce) values (1, 'white', 1500);
       	insert into milk (mno, mname, mpirce) values (2, 'choco', 1800);
       	insert into milk (mno, mname, mpirce) values (3, 'banana', 1800);
       	*/
       	       	
       	//1. white  1500
       	//2. choco  1800
       	//3. banana 1800
       	     	
       	
       	%>
       	</tbody>
       	

<!--       주문현황표             -->
<!--       주문현황표             -->
       </table>
   </div>
       	
   <div class="container card my-5 bg-warning text-white">
      <h2 class="card-header">Milk ORDER</h2>
      
       <table class="table table-bordered table-striped table-hover">
       	<caption>주문현황표</caption>
       	<thead>
       		<tr>
       			<th scope="col">NO</th>
       			<th scope="col">NAME</th>
       			<th scope="col">NUM</th>
                <th scope="col">DATA</th>
       		</tr>
       	
       	</thead>
       	
       	<tbody>
       	<% 
       	try{
       	//1. 드라이버 연동
       	Class.forName("com.mysql.cj.jdbc.Driver");
       	
       	Connection conn = null;
       	PreparedStatement pstmt = null;
       	ResultSet rset = null;
       	
        //2. JDBC 연동
   		conn = DriverManager.getConnection(
	   			                    "jdbc:mysql://localhost:3306/mbasic",   // url
	   			                    "root",   // user
	   			                    "1401");  // pass
	   	       	
	   	//3. PreparedStatement pstmt 이용해서 sql 처리  pstmt.executeQuery()
	   	
	   	pstmt = conn.prepareStatement("select * from milk_order order by ono desc");
	  	
	    rset = pstmt.executeQuery(); // 표
	    while(rset.next()){ // 줄
	        out.println("<tr><td>" + rset.getInt("ono") + "</td><td>"
	                               + rset.getString("oname") + "</td><td>"
	                               + rset.getInt("onum") + "</td><td>"       
	                               + rset.getString("odata") + "</td></tr>"
	        );
	    }
	    
        //4. jdbc close
	    if(rset != null){rset.close();}
    	if(pstmt != null){pstmt.close();}
    	if(conn != null){conn.close();}
    	
    	
       	}catch( Exception e){ e.printStackTrace(); }
       	%>
       	      	
       	</tbody>
       	
       </table>
   </div>
   
   
   
   
   
   
<!-- 주문삽입, 수정, 삭제 -->
<!-- 주문삽입, 수정, 삭제 -->
<!-- https://www.w3schools.com/bootstrap5/bootstrap_collapse.php -->
   
   <div class="container card my-5 bg-secondary my-5 p-3 ">
      <h2 class="card-header bg-primary text-white my-3">Milk 주문 수정 삭제</h2>
      
      <div id="accordion">

		  <div class="card">
		    <div class="card-header bg-primary">
		      <a class="btn" data-bs-toggle="collapse" href="#collapseOne">
		        주문하기
		      </a>
		    </div>
		    <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
		      <div class="card-body">
				<form action="jsp012_insert.jsp" method="post" onsubmit="return order()">
					<div class="my-3">
						<label for="oname" class="form-label">주문할 우유이름</label> 
						<input type="text" class="form-control" id="oname" name="oname"/>
					</div>
					<div class="my-3">
						<label for="onum" class="form-label">주문할 우유갯수</label> 
						<input type="text" class="form-control" id="onum" name="onum" />
					</div>
					<div>
						<button type="submit" class="btn btn-warning">주문하기</button>
					</div>
				</form>
			</div>
		    </div>
		  </div>
		
		  <div class="card">
		    <div class="card-header  bg-primary">
		      <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseTwo">
		        주문수정
		      </a>
		    </div>
		    <div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
		      <div class="card-body">

			   <form action="jsp012_update.jsp" method="post" onsubmit="return order1()">
						<div class="my-3">
							<label for="ono1" class="form-label">수정할 우유번호</label> 
							<input type="text" class="form-control" id="ono1" name="ono"/>
						</div>
						<div class="my-3">
							<label for="oname1" class="form-label">수정할 우유이름</label> 
							<input type="text" class="form-control" id="onamm1" name="oname" />
						</div>
						<div class="my-3">
							<label for="onum1" class="form-label">수정할 우유갯수</label> 
							<input type="text" class="form-control" id="onum1" name="onum" />
						</div>
						
						<div>
							<button type="submit" class="btn btn-warning">수정하기</button>
						</div>
				</form>


		      </div>
		    </div>
		  </div>
		
		  <div class="card">
		    <div class="card-header  bg-primary">
		      <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseThree">
		        주문삭제
		      </a>
		    </div>
		    <div id="collapseThree" class="collapse" data-bs-parent="#accordion">
		      <div class="card-body">
		         <form action="jsp012_delete.jsp"    method="get" onsubmit="return order2()">
	                 <div class="mb-3">
	                   <label for="ono_delete" class="form-label"> 취소 주문번호</label>
	                   <input type="number" class="form-control" id="ono_delete" 
	                         placeholder="취소할 주문번호를 적어주세요!" name="ono">
	                 </div>
                 <button type="submit" class="btn btn-danger">취소하기</button>
               </form> 
		        <!-- 
		        1) form 만들기 2) 빈칸검사
		        3) 처리해결사 jsp012_insert.jsp 데이터 노출x 보관용기 oname, enum
		        
		         -->
		      </div>
		    </div>
		  </div>
		
		</div>
      
       <table class="table table-bordered table-striped table-hover">
       	<!-- <caption></caption>
       	<thead>
       		<tr>
       			<th scope="col">NO</th>
       			<th scope="col">NAME</th>
       			<th scope="col">PRICE</th>
                <th scope="col">주문날짜</th>
       		</tr>
       	
       	</thead>  -->
       	
       	<tbody>
       	<% 
       	try{
       	
       	
       		
       		
       	}catch( Exception e){ e.printStackTrace(); }
       	%>
       	      	
       	</tbody>
       	
       </table>
   </div>
       	
       	      	
</body>
</html>
<!-- 
= MODEL
★ 다음과 같이 테이블을 준비해주세요!
mysql> desc milk_order;
+-------+--------------+------+-----+-------------------+-------------------+
| Field | Type         | Null | Key | Default           | Extra             |
+-------+--------------+------+-----+-------------------+-------------------+
| ono   | int          | NO   | PRI | NULL              | auto_increment    |
| oname | varchar(20)  | NO   |     | NULL              |                   |
| onum  | int          | NO   |     | NULL              |                   |
| odate | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| oip   | varchar(100) | NO   |     | NULL              |                   |
+-------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0.00 sec)


-- Q1.  milk_order 값삽입.  insert 구문 완성    
-- Q2.  milk_order ono가 1인데이터 조회 
-- Q3.  milk_order 전체데이터조회
-- Q4.  milk_order 해당번호의 이름과 갯수 수정
-- Q5.  milk_order 해당번호의 데이터 삭제



 -->       	