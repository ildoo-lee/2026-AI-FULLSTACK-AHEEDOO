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
   <div class="container card my-5">
      <h3 class="card-header">글 상세보기</h3>
      <form action="#" method="post"  onsubmit="return checkFrom()">
			<div class="my-3">
			    <label for="bviews">+ 조회수</label>
			    <input type="number" class="form-control" id="bviews" name="bviews" value="0" min="0" />
			</div>
			
			<div class="my-3">
				<label for="bname">이름</label>
				<input type="text" class="form-control" id="bname" name="bname" />
			</div> 
			<div class="my-3">
				<label for="bpass">비밀번호</label>
				<input type="text" class="form-control" id="bpass" name="bpass" />
			</div>
			<div class="my-3">
				<label for="btitle">+ 제목</label>
				<input type="text" class="form-control" id="btitle" name="btitle" readonly/>
			</div>
			<div class="my-3">
			    <label for="bcontent">+ 내용</label>
			    <textarea class="form-control" id="bcontent" name="bcontent" style="height: 300px;" readonly></textarea>
			</div>
			<div class="my-3 text_end">
				<button type="reset" class="btn btn-primary" title="글취소">취소</button>
			    
			    <a href="" class="btn btn-primary" title="글수정">수정</a>
			    <a href="" class="btn btn-primary" title="글수정">삭제</a>
			    <a href="" class="btn btn-primary" title="목록보러가기">목록</a>
				
				<button type="submit" class="btn btn-primary" title="글등록">글쓰기</button>
			</div>     
      </form>
      <script>
      	function checkFrom(){
      		let bpass = document.getElementById("bpass");
      		let bviews = document.getElementById("bviews");
      		let bname = document.getElementById("bname");
      		let btitle = document.getElementById("btitle");
      		let bcontent = document.getElementById("bcontent");
      		
      		if(bviews.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		if(bname.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		if(btitle.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		if(bcontent.value.trim()==""){alter("빈칸입니다.\n확인해주세요."); bname.focus(); return false; }
      		return true;
      	}
      </script>
       
   </div>
</body>
</html>