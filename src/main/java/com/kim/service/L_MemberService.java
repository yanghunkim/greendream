package com.kim.service;

import com.kim.model.MemberDTO;
import com.kim.model.NaverVo;

public interface L_MemberService {
	//회원가입
	public void memberAdd(MemberDTO member);
	
	//중복 Id 검색
	public boolean selectId(String id); 
	
	// naver 회원가입 여부 체크
	
	
	// naver 회원가입
	public void naverAdd(NaverVo naver);
	
	// naver 회원가입 여부 체크
	public NaverVo naverCheck(NaverVo naver);
}
