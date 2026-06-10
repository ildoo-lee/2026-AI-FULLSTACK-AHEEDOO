package com.the703.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.the703.service.UserService;

@Controller
@RequestMapping("/security/*")
public class SecurityController { 
	@Autowired  UserService service;
	
	@RequestMapping("/all")    public String all() {  return "security/all"; }
	@RequestMapping("/member") public String member() {  return "security/member"; }
	@RequestMapping("/join")   public String join() {  return "security/join"; }
	@RequestMapping("/login")  public String login() { return "security/login"; }
	@RequestMapping("/fail")   public String fail() {  return "security/fail"; }
	
	// Authentication - Principal( 현재 로그인 한 사용자정보 )
	@RequestMapping("/mypage") public String mypage( Principal  principal , Model model  ) {  
		System.out.println("............." + principal); 
		System.out.println("............." + principal.getName());  // username -  email
		 
		model.addAttribute("dto" , service.findByEmailUserInfo(  principal.getName() ));
		// mapper - email 검색시 해당유저 정보가져오기
		return "security/mypage"; 
	}
}








