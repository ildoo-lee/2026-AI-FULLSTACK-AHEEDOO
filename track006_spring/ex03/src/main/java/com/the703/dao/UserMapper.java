package com.the703.dao;

import com.the703.dto.AuthDto;
import com.the703.dto.AuthListDto;
import com.the703.dto.UserDto;

@Mapper
public interface UserMapper {
    public int insert(UserDto dto);
    public int findLogin(UserDto dto);
    public UserDto findByUno(int uno);
    public String findByEmail(String email);
    
    // ◀ 아래 2줄이 UserMapper 자바 파일 안에 똑같이 추가되어 있어야 빨간줄이 풀립니다.
    public int insertAuth(AuthDto dto); 
    public AuthListDto readAuth(AuthDto dto); // xml에서 이메일로 찾기로 하셨다면 String email  ## 
}


/*
2) Dao - UserMapper   user-mapper.xml
         join / login / mypage  / 아이디 중복검사 (해당 sql 찾기)

create  : 
    insert into users  (nickname ,bpass, email , mobile, bip )  
    values             ( #{nickname} ,#{bpass}, #{email} , #{mobile}, #{bip} ) 

read    : 
    select count(*) from users  where  email=#{email}  and  bpass=#{bpass}
    select       *  from users  where  uno=#{uno} 
    select    email from users  where  email=#{email}

1)  insert 구문찾기    first@gmail.com  /  ROLE_MEMBER
     insert into  authorities (email, auth) values ( #{email} , #{auth} ) 

2)  JOIN 이용해서    first@gmail.com의   email, bpass, auth 필드값찾기 
  select     u.email,  u.bpass,  a.auth
  from      users u    left   join authorities a    on u.email   = a.email  
  where     u.email =#{email} 
*/