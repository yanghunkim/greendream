package com.kim.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.MemberDTO;
import com.kim.service.L_MemberService;



@Controller
public class MemberController {
	
	@Autowired
    private JavaMailSender mailSender;
	
	@Autowired
	L_MemberService ls;
	
	@GetMapping("memberTerms")
	public String mt() {
		return  "L_member/L_memberTerms";
	}
	@PostMapping("memberEmail")
	public String mee() {
		return "L_member/L_memberEmail";
	}
	
	@PostMapping("memberId")
	public String mi(HttpServletRequest request) {
		String memail = request.getParameter("email");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("email", memail);
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
	
	@ResponseBody
	@RequestMapping(value = "/emailAuth", method = RequestMethod.POST)
	public String emailAuth(String email) {		
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		/* 이메일 보내기 */
        String setFrom = "never2346@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
      
        try {
        	 
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        return Integer.toString(checkNum);
        /*이메일 추가*/
	}
	
	@GetMapping("naverlogin")
	public String nl() {
		return  "L_member/naverlogin";
	}
}
