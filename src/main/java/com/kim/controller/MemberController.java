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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.MemberDTO;
import com.kim.model.NaverVo;
import com.kim.service.L_MemberService;



@Controller
/*@RequiredArgsConstructor*/
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
	@GetMapping("memberNaverId")
	public String mn() {

		
		return "L_member/L_memberNaverId";
	}
	
	@PostMapping("memberNaverPhone")
	public String men(HttpServletRequest request) {
		String mid = request.getParameter("id");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("id", mid);
		
		return "L_member/L_memberNaverPhone";
	}
	
	@PostMapping("memberNaverEnd")
	public String mne(HttpServletRequest request,NaverVo naver) {
/*		String gender = request.getParameter("gender");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		// mid(가져온 값이랑) db 값이 일치하면 세션 저장
		HttpSession session = request.getSession();
		session.setAttribute("gender", gender);
		session.setAttribute("name", name);
		session.setAttribute("birth", birth);
		session.setAttribute("email", email);
		session.setAttribute("phone", phone);*/
		ls.naverAdd(naver);
		
		return  "redirect:/";
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
	
	@RequestMapping("/naverlogin")
    public String naver() {
        return "L_member/naverlogin";
    }
    
    
    @RequestMapping(value="/callback", method=RequestMethod.GET)
    public String callBack(){
        return "callback";
    }
    
    @RequestMapping(value="naverSave", method=RequestMethod.POST)
    public @ResponseBody String naverSave(NaverVo naver, HttpServletRequest request,
    		@RequestParam("n_birthyear") String n_birthyear, @RequestParam("n_email") String n_email, 
    		@RequestParam("n_gender") String n_gender, @RequestParam("n_name") String n_name, 
    		@RequestParam("n_nickName") String n_nickName, @RequestParam("n_mobile") String n_mobile, 
    		@RequestParam("n_birthday") String n_birthday,
    		@RequestParam("n_id") String n_id ) {
	    	
	HttpSession session = request.getSession();
		session.setAttribute("n_email", n_email);	
		session.setAttribute("n_birthday", n_birthday);	
		session.setAttribute("n_gender", n_gender);	
		session.setAttribute("n_name", n_name);	
		session.setAttribute("n_nickName", n_nickName);	
		session.setAttribute("n_mobile", n_mobile);	
		session.setAttribute("n_birthyear", n_birthyear);	
		session.setAttribute("n_id", n_id);	
    	
	    System.out.println("#############################################");
	    System.out.println(n_email);
	    System.out.println(n_birthday);
	    System.out.println(n_gender);
	    System.out.println(n_name);
	    System.out.println(n_nickName);
	    System.out.println(n_mobile);
	    System.out.println(n_birthyear);
	    System.out.println(n_id);

	    System.out.println("#############################################");
	    /*	 	 	  NaverVo naver = new NaverVo();

   		naver.setBirthday(n_birthday);
	    naver.setEmail(n_gender);
	    naver.setGender(n_name);
	    naver.setId(n_mobile);
	    naver.setName(n_nickName);
	    naver.setNickName(n_email);
	    naver.setNickName(n_birthyear);
	    naver.setNickName(n_age);
	    naver.setNickName(n_id);*/
	    System.out.println("#############################################");



	   
	    String result = "no";
	 
	/*    ls.naverAdd(naver);*/
	    NaverVo userinfo = ls.naverCheck(naver);
    	
	
    if(userinfo != null) {

        result = "ok";
    }
    
    return result;

}



}
