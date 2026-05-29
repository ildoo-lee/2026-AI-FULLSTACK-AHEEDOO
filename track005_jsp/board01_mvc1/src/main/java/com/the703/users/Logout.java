package com.the703.users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Logout() { super();  }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println("............ logout");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		response.sendRedirect(  request.getContextPath() + "/" );
		//   /                                  톰캣서버경로 : /                localhost:8080/
		//   request.getContextPath()  +   /    애플리케이션 : board01_mvc1/    localhost:8080/board01_mvc1/
		//System.out.println("<script>alert('로그아웃 성공!'); location.href='login.jsp';</script>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
