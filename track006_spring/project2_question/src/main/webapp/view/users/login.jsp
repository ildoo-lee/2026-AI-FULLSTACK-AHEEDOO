<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp" %>

<div class="container my-5">
  <h3>로그인</h3> 
  
  <form action="${pageContext.request.contextPath}/users/login" method="post" novalidate>                
    
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="hidden" name="X-CSRF-TOKEN" value="${_csrf.token}"/>
    
    <div class="my-3">
      <label for="username" class="form-label">이메일</label>
      <input type="text" class="form-control" id="username" name="username" required />
    </div>
               
    <div class="my-3">
      <label for="password" class="form-label">비밀번호</label>
      <input type="password" class="form-control" id="password" name="password" required />
    </div>
    
    <c:if test="${not empty param.error}">
      <div class="my-3 alert alert-danger">
        아이디 또는 비밀번호가 일치하지 않습니다.
      </div>
    </c:if>
    
    <div class="text-end my-3">
      <button type="submit" class="btn btn-primary">로그인</button>
    </div>
  </form>
</div> 

<%@include file="../inc/footer.jsp" %>