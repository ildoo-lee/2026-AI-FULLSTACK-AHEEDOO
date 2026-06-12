package com.the703.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.the703.dao.UserMapper;
import com.the703.dto.AuthDto;
import com.the703.dto.AuthUserDto;
import com.the703.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {

	@Autowired 
	UserMapper dao;
	
	@Autowired 
	@Qualifier("passwordEncoder") 
	PasswordEncoder pwencoder;
	
	@Override
	public int insert(UserDto dto) {
		// 1. 가입하기 전 비밀번호 암호화 및 IP 설정 진행
		dto.setBpass(pwencoder.encode(dto.getBpass()));  
		try { 
			dto.setBip(java.net.InetAddress.getLocalHost().getHostAddress()); 
		} catch (java.net.UnknownHostException e) { 
			e.printStackTrace(); 
		}
		
		// 2. [교정] 부모 테이블인 users에 회원 정보를 가장 먼저 인서트합니다.
		int result = dao.insert(dto);
		
		// 3. [교정] 회원이 성공적으로 등록된 후, 자식 테이블인 authorities에 권한을 추가합니다.
		AuthDto adto = new AuthDto();
		adto.setEmail(dto.getEmail()); 
		adto.setAuth("ROLE_MEMBER");
		dao.insertAuth(adto); 
		
		return result;
	}

	@Override 
	public String findByEmail(String email) { 
		return dao.findByEmail(email); 
	}
        
	@Override 
	public UserDto findByEmailUserInfo(String email) {
		return dao.findByEmailUserInfo(email); 
	}

	@Override 
	public String findByNickname(String nickname) {  
		return dao.findByNickname(nickname); 
	}

	@Override public AuthUserDto readAuth(String email) {  return null; }
	@Override public UserDto findByUno(int uno) {  return null; }
	@Override public int findLogin(UserDto dto) {  return 0; }
	@Override public void AuthListDto() {}
	@Override public void readAuth(AuthDto dto) {}
}