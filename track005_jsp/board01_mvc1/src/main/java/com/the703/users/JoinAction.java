package com.the703.users;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JOINACTION
 */
@WebServlet("/JoinAction")
public class JoinAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public JoinAction() { super();  }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("join.jsp").forward(request, response);// 회원가입폼으로
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원가입기능
		//1. 데이터 넘겨받기 - nickname, bpass, email, mobile
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();   //java.io.PrintWriter
		String nickname = request.getParameter("nickname");
		String bpass = request.getParameter("bpass");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		
		//2. sql (드커프리) 처리
		Connection conn = null;	PreparedStatement pstmt = null;
		String sql = "insert into users (nickname , bpass , email , mobile , bip)  values (?,?,?,?,?)";
		String url = "jdbc:mysql://localhost:3306/mbasic";
		
		try{
		    Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, "root", "1111");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nickname);
			pstmt.setString(2, bpass);
			pstmt.setString(3, email);
			pstmt.setString(4, mobile);
			pstmt.setString(5, InetAddress.getLocalHost().getHostAddress()); // Ip 주소가져오기
			
			//3
		    int result = pstmt.executeUpdate(); // insert, update, delete 실행한 줄 수 
				
			//4
			if(result >0){  out.println("<script> alert('회원가입 성공!'); location.href='JoinAction';</script>");
			}else{
				out.println("<script> alert('회원가입 실패!'); history.go(-1);</script>");
			}
			
			if(pstmt != null){pstmt.close();}
			if(conn != null){conn.close();}

			}catch( Exception e){ e.printStackTrace(); }
		
		
		//3. 해당처리화면 - 로그인 폼으로 (LoginAction - Get) 
		
		
		
	}

}
