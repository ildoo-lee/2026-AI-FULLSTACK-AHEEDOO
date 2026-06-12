package com.the703.controller;

import java.security.Principal;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.the703.dto.UserDto;
import com.the703.service.UserService;

@Controller
public class UserController {

	@Autowired  UserService service;
	
	@RequestMapping( "/" )
	public String index() {  return "redirect:/users/login"; }

	 
	///////////////////////////////////////
	@RequestMapping( value="/users/join" , method=RequestMethod.GET  )
	public String join() {  return "users/join"; }
	@RequestMapping(value="/users/join" , method=RequestMethod.POST)   
	   public String join_post(UserDto dto , RedirectAttributes rttr) {  
	      String result ="회원가입실패";
	      if(service.insert(dto)  > 0) {   result = "회원가입 성공"; }
	      rttr.addFlashAttribute("success", result);
	      return "redirect:/users/login"; 
	   }
	 
	@RequestMapping( value="/users/login" , method=RequestMethod.GET  )
	public String login() {  return "users/login"; }
//	@RequestMapping(value="/users/login", method=RequestMethod.POST)
//	public String login_post(UserDto dto, RedirectAttributes rttr) {
//		String result = "로그인 성공";
//		rttr.addFlashAttribute("success", result);
//		return "redirect:/"; 
//	}
	
	
	@RequestMapping("users/mypage") public String mypage( Principal principal , Model model ) { 
		System.out.println(principal);
		System.out.println(principal.getName());
		
		model.addAttribute("dto" , service.findByEmailUserInfo(principal.getName()));
		
		return "users/mypage"; 
	}
	
	@RequestMapping("/users/logout")
	public String logout(HttpServletRequest request) {
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate();
	    }
	    return "redirect:/users/login";
	}
 
	
}
