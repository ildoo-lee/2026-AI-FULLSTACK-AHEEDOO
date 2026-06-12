package com.the703.service;

import com.the703.dto.AuthDto;
import com.the703.dto.AuthUserDto;
import com.the703.dto.UserDto;

public interface UserService {

	public     AuthUserDto    readAuth( String email );

	public int insert(UserDto dto);

	public String findByEmail(String email);

	public String findByNickname(String nickname);

	UserDto findByEmailUserInfo(String email);

	void AuthListDto(); void readAuth(AuthDto dto);

	UserDto findByUno(int uno);

	int findLogin(UserDto dto);
	
}

