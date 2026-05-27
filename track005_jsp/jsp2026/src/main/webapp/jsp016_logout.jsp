<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션(로그인 기록)을 무효화(삭제)
	session.invalidate();

	// 2. 로그인 페이지(jsp016_login.jsp)로 이동
	out.println("<script>alert('로그아웃 성공!'); location.href='jsp016_login.jsp';</script>");
%>