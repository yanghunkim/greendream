package com.kim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.L_MemberMapper;
import com.kim.model.MemberDTO;

@Service
public class L_MemberServiceImpl implements L_MemberService{
	@Autowired
	L_MemberMapper lm;
	
	public void memberAdd(MemberDTO member) {
		lm.memberAdd(member);
	}
	
	public boolean selectId(String id) {

		return lm.selectId(id);
	}
}
