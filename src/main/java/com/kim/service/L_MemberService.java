package com.kim.service;

import com.kim.model.MemberDTO;

public interface L_MemberService {
	//회원가입
	public void memberAdd(MemberDTO member);
	
	public boolean selectId(String id); //중복 Id 검색
}
