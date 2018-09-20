package com.kuzuro.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kuzuro.domain.MemberVO;
import com.kuzuro.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;

	// 회원 가입
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);		
	}

	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
				
		return dao.login(vo);
	}

	// 회원정보 수정
	@Override
	public void modify(MemberVO vo) throws Exception {
		
		dao.modify(vo);
	}

	// 회원 탈회
	@Override
	public void withdrawal(MemberVO vo) throws Exception {
		dao.withdrawal(vo);
	}
} 
