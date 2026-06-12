<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp" %>

<div class="container my-5">
  <h3>회원가입</h3> 
  <form action="${pageContext.request.contextPath}/users/join" method="post" onsubmit="return checkForm()">                
    
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="hidden" name="X-CSRF-TOKEN" value="${_csrf.token}"/>
    
    <div class="my-3">
      <label for="nickname" class="form-label">닉네임</label>
      <input type="text" class="form-control" id="nickname" name="nickname" />
    </div>
    <div class="my-3 alert alert-warning tnickname"> 
      닉네임 중복검사는 필수입니다.
    </div>  
               
    <div class="my-3">
      <label for="bpass" class="form-label">비밀번호</label>
      <input type="password" class="form-control" id="bpass" name="bpass" />
    </div>
    
    <div class="my-3">
      <label for="email" class="form-label">이메일</label>
      <input type="email" class="form-control" id="email" name="email" />   
    </div>  
    <div class="my-3 alert alert-warning target"> 
      아이디 중복검사는 필수입니다.
    </div>        
    
    <div class="my-3">
      <label for="mobile" class="form-label">휴대폰</label>
      <input type="text" class="form-control" id="mobile" name="mobile" />
    </div>
    
    <div class="text-end">
      <button type="reset" class="btn btn-outline-primary">취소</button>
      <button type="submit" class="btn btn-primary">가입하기</button>
    </div>
  </form>
</div> 

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(function() {
    // Ajax 요청용 CSRF 사전 등록 세팅
    let token = $("input[name='_csrf']").val();
    let header = "X-CSRF-TOKEN";
    $.ajaxSetup({
        beforeSend: function(xhr) {
            if(token && header) { xhr.setRequestHeader(header, token); }
        }
    });

    // [문항1] 이메일 중복검사 Ajax
    $("#email").on("keyup", function() {
        let value = $(this).val().trim();
        if (value !== "") {
            $.ajax({
                url: "${pageContext.request.contextPath}/doubleEmail",
                type: "get",
                data: { "email": value },
                dataType: "json",
                success: function(data) {
                    if (data.exists) {
                        $(".target").text("이미 사용중인 이메일입니다.")
                                    .attr("class", "my-3 alert alert-danger target");
                    } else {
                        $(".target").text("사용 가능한 이메일입니다.")
                                    .attr("class", "my-3 alert alert-success target");
                    }
                },
                error: function() {
                    $(".target").text("서버오류입니다.")
                                .attr("class", "my-3 alert alert-danger target");
                }
            });
        } else {
            $(".target").text("아이디 중복검사는 필수입니다.")
                        .attr("class", "my-3 alert alert-warning target");
        }
    });

    // [문항2] 닉네임 중복검사 Ajax
    $("#nickname").on("keyup", function() {
        let value = $(this).val().trim();
        if (value !== "") {
            $.ajax({
                url: "${pageContext.request.contextPath}/doubleNickname",
                type: "get",
                data: { "nickname": value },
                dataType: "json",
                success: function(data) {
                    if (data.exists) {
                        $(".tnickname").text("이미 사용중인 닉네임입니다.")
                                       .attr("class", "my-3 alert alert-danger tnickname");
                    } else {
                        $(".tnickname").text("사용 가능한 닉네임입니다.")
                                       .attr("class", "my-3 alert alert-success tnickname");
                    }
                },
                error: function() {
                    $(".tnickname").text("서버오류입니다.")
                                   .attr("class", "my-3 alert alert-danger tnickname");
                }
            });
        } else {
            $(".tnickname").text("닉네임 중복검사는 필수입니다.")
                        .attr("class", "my-3 alert alert-warning tnickname");
        }
    });
});

function checkForm(){
  let nickname = document.getElementById("nickname");
  let bpass = document.getElementById("bpass");
  let email = document.getElementById("email");
  let mobile = document.getElementById("mobile");

  if(nickname.value.trim()==""){ alert("닉네임을 입력하세요"); nickname.focus(); return false; }
  if(bpass.value.trim()==""){ alert("비밀번호를 입력하세요"); bpass.focus(); return false; }
  if(email.value.trim()==""){ alert("이메일을 입력하세요"); email.focus(); return false; }
  if(mobile.value.trim()==""){ alert("휴대폰 번호를 입력하세요"); mobile.focus(); return false; }
  return true;
}
</script>

<%@include file="../inc/footer.jsp" %>