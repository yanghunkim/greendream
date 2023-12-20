package com.kim.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.MemberDTO;
import com.kim.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	MemberService ms;
	
	@RequestMapping(value="login", method = RequestMethod.GET)
		public String loginPage() {
		return "S_login";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
		public String loginSuccess(MemberDTO member, HttpSession session) {
		if(ms.login(member) != null) {
			session.setAttribute("login", ms.login(member));
			return "redirect:/";
		}else {
			return "S_login";
		}	
	}
	
	@RequestMapping(value="logout", method = RequestMethod.POST)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	
	@RequestMapping(value="find", method = RequestMethod.GET)
		public String loginFind() {
		return "S_loginFind";
	}
	
	// 휴대폰번호로 아이디 찾기
	@RequestMapping(value="S_findIdPhone", method = RequestMethod.POST)
	public String findIdPhone(MemberDTO member, HttpServletRequest request, HttpSession session) {
	
		//ms.findIdPhone(member);
		MemberDTO userinfo = ms.findIdPhone(member);
		
		if(userinfo != null) {
			request.setAttribute("message", "회원님의 아이디는"+userinfo.getId()+"입니다.");
			
		}else {
			request.setAttribute("message", "일치하는 아이디가 없습니다.");
			
		}
		return "messageP";
	}
	
	// 이메일로 아이디 찾기
	@RequestMapping(value="S_findIdEmail", method = RequestMethod.POST)
	public String findIdEmail(MemberDTO member, HttpServletRequest request, HttpSession session) {
	
		//ms.findIdPhone(member);
		MemberDTO userinfo = ms.findIdEmail(member);
		
		if(userinfo != null) {
			request.setAttribute("message", "회원님의 아이디는"+userinfo.getId()+"입니다.");
			
		}else {
			request.setAttribute("message", "일치하는 아이디가 없습니다.");
			
		}
		return "messageE";
	}
	
/*	@RequestMapping(value="findIdEmail", method = RequestMethod.POST)
	public String findIdEmail(MemberDTO member, HttpServletRequest request, HttpServletResponse response) 
			throws UnsupportedEncodingException {
		MemberDTO userinfo = ms.findIdEmail(member);
		
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("userinfo",userinfo);

		return "redirect:/S_findIdEmail";
	}
	
	@RequestMapping(value="S_findIdEmail", method = RequestMethod.GET)
	public void findIdEmailPage(MemberDTO member, HttpSession session) {
		MemberDTO userinfo = ms.findIdEmail(member);
		session.setAttribute("userinfo", userinfo);
		System.out.println(userinfo.getName());

	}*/
	
	@RequestMapping(value="S_findPw", method = RequestMethod.GET)
	public String findPw() {
	return "S_findPw";
}
}