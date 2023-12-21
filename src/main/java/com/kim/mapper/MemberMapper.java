package com.kim.mapper;

import com.kim.model.MemberDTO;

public interface MemberMapper {
	// 로그인
	public MemberDTO login(MemberDTO member);
	
	// 아이디 찾기(Phone)
	public MemberDTO findIdPhone(MemberDTO member);
	
	// 아이디 찾기(Email)
	public MemberDTO findIdEmail(MemberDTO member);
	
	// 비밀번호 찾기/수정
	public void findPw(MemberDTO member);
	
}
