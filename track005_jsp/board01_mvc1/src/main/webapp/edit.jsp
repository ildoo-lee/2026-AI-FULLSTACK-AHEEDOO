<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
   
<%@include file="inc/header.jsp" %>

   <!--  header -->
   <!--  header -->
   
   <div class="container card my-5">
      <h3 class="card-header">글 수정</h3>
      <form action="#" method="post" onsubmit="return checkFrom()">
			<div class="my-3">
				<label for="bname">이름</label>
				<input type="text" class="form-control" id="bname" name="bname" />
			</div> 
			<div class="my-3">
				<label for="bpass">비밀번호</label>
				<input type="text" class="form-control" id="bpass" name="bpass" />
			</div>
			<div class="my-3">
				<label for="btitle">제목</label>
				<input type="text" class="form-control" id="btitle" name="btitle" />
			</div>
			<div class="my-3">
				<label for="bcontent">내용</label>
				<textarea class="form-control" id="bcontent" name="bcontent"></textarea>
			</div>
			<div class="my-3 text_end">
				<button type="reset" class="btn btn-primary" title="글취소">취소</button>
			    <a href="" class="btn btn-primary" title="글보러가기">목록</a>
				<button type="submit" class="btn btn-primary" title="글등록">글수정</button>
			</div>     
      </form>
      <script>
      	function checkFrom(){
      		let bname = document.getElementById("bname");
      		let bpass = document.getElementById("bpass");
      		let btitle = document.getElementById("btitle");
      		let bcontent = document.getElementById("bcontent");
      		
      		if(bname.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		if(bpass.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		if(btitle.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		if(bcontent.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		return true;
      	}
      </script>
       
   </div>
    
   <!--  footer -->
   <!--  footer -->

<%@include file="inc/footer.jsp" %>