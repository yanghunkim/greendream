package com.kim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.L_MemberMapper;
import com.kim.model.MemberDTO;
import com.kim.model.NaverVo;

@Service
public class L_MemberServiceImpl implements L_MemberService{
	@Autowired
	L_MemberMapper lm;
	
	// 회원가입
	public void memberAdd(MemberDTO member) {
		lm.memberAdd(member);
	}
	
	// 중복 Id 검색
	public boolean selectId(String id) {

		return lm.selectId(id);
	}
	
	// 네이버 회원가입
	public void naverAdd(NaverVo naver){
		lm.naverAdd(naver);
	}
	
	// naver 회원가입 여부 체크
	public NaverVo naverCheck(NaverVo naver) {
		return lm.naverCheck(naver);
	}

}
