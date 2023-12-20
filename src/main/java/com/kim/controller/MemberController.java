package com.kim.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.MemberDTO;
import com.kim.service.L_MemberService;



@Controller
public class MemberController {
	
	@Autowired
	L_MemberService ls;
	
	@GetMapping("member")
	public String mem() {
		return "L_member/L_member";
	}
	@GetMapping("memberTerms")
	public String mt() {
		return  "L_member/L_memberTerms";
	}
	
	@PostMapping("memberId")
	public String mi() {
		return  "L_member/L_memberId";
	}
	
	@PostMapping("memberIdCheck")
	@ResponseBody
	public ResponseEntity<Boolean> confirmId(String id) {
		boolean result = true;
		
		if(id.trim().isEmpty()) {
			result = false;
		} else {
			if (ls.selectId(id)) {
				result = false;
			} else {
				result = true;
			}
		}
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	@PostMapping("memberPassword")
	public String mp(HttpServletRequest request) {
		String mid = request.getParameter("id");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("id", mid);
		
		return "L_member/L_memberPassword";
	}
	@PostMapping("memberPhone")
	public String mpo(HttpServletRequest request) {
		String mname = request.getParameter("name");
		String mgender = request.getParameter("gender");
		String myear = request.getParameter("year");
		String mmonth = request.getParameter("month");
		String mday = request.getParameter("day");
		
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("name", mname);
		session.setAttribute("gender", mgender);
		session.setAttribute("year", myear);
		session.setAttribute("month", mmonth);
		session.setAttribute("day", mday);
		
		String year = (String)session.getAttribute("year");
		String month = (String)session.getAttribute("month");
		String day = (String)session.getAttribute("day");
	
		System.out.println(year);
		System.out.println(month);
		System.out.println(day);
		
		return "L_member/L_memberPhone";
	}
	
	@PostMapping("memberEtc")
	public String me(HttpServletRequest request) {
		String mpw = request.getParameter("pw");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("pw", mpw);
		
		
		return "L_member/L_memberEtc";
	}
	
	@PostMapping("memberEnd")
	public String md(HttpServletRequest request,MemberDTO member) {
		
		
		String mphone = request.getParameter("phone");
		String mpphone = request.getParameter("pphone");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("phone", mphone);
		session.setAttribute("pphone", mpphone);
		
		ls.memberAdd(member);
		return "L_member/L_memberEnd";
		
	/*	aaaa*/
	}
	
	
}
