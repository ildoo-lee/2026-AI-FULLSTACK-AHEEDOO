<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   

<%@include file="inc/header.jsp" %>

   <div class="container card my-5">
      <h3 class="card-header">회원가입</h3>
      
      <form action="join_action.jsp" method="post" onsubmit="return checkFrom()">
			<div class="my-3">
				<label for="nickname">닉네임</label>
				<input type="text" class="form-control" id="nickname" name="nickname" />
			</div> 
			<div class="my-3">
				<label for="bpass">비밀번호</label>
				<input type="password" class="form-control" id="bpass" name="bpass" />
			</div>
			<div class="my-3">
				<label for="email">이메일</label>
				<input type="text" class="form-control" id="email" name="email" />
			</div>
			<div class="my-3">
				<label for="mobile">휴대폰</label>
				<input type="text" class="form-control" id="mobile" name="mobile" />
			</div>
			<div class="my-3 text-end">
				<button type="reset" class="btn btn-outline-primary" title="글취소">취소</button>
				<button type="submit" class="btn btn-primary" title="글등록">가입하기</button>
			</div>     
      </form>
      <script>
      	function checkFrom(){
      		let nickname = document.getElementById("nickname");
      		let bpass = document.getElementById("bpass");
      		let email = document.getElementById("email");
      		let mobile = document.getElementById("mobile");
      		
      		if(nickname.value.trim()==""){alert("빈칸입니다.\n확인해주세요."); nickname.focus(); return false; }
      		if(bpass.value.trim()==""){alert("빈칸입니다.\n확인해주세요."); bpass.focus(); return false; }
      		if(email.value.trim()==""){alert("빈칸입니다.\n확인해주세요."); email.focus(); return false; }
      		if(mobile.value.trim()==""){alert("빈칸입니다.\n확인해주세요."); mobile.focus(); return false; }
      		return true;
      	}
      </script>
       
   </div>

    <%@include file="inc/footer.jsp" %>