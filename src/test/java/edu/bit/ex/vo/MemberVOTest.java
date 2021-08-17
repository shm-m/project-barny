package edu.bit.ex.vo;

import static org.junit.jupiter.api.Assertions.*;


import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.bit.ex.service.member.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest

class MemberVOTest {
	
	@Autowired
	private MemberService memberService;

	@Test
	void test() {
		MemberVO mvo = new MemberVO();

		mvo.setAddress("서울시");
		java.sql.Date d = java.sql.Date.valueOf("1998-01-01");
		mvo.setDate_of_birth(d);
		mvo.setEmail("yun6160@naverr.com");
		mvo.setMember_id("test1");
		mvo.setMember_idx('1');
		mvo.setMember_name("테스트");
		mvo.setNickname("테스트");
		mvo.setPayment(null);
		mvo.setPoint(0);
		mvo.setPw("test");
		mvo.setTel("010-5303-2698");
		
		memberService.addUser(mvo);
		
		
	}

}
