package com.kim.mapper;

import com.kim.model.MemberDTO;

public interface L_MemberMapper {
	public void memberAdd(MemberDTO member);
	
	public boolean selectId(String id); //중복 Id 검색
}