package com.woong.wuction.member.service;

import com.woong.wuction.member.model.vo.Member;

public interface MemberService {
	/* 로그인 요청 관련 기능 */
	Member loginMember(Member m);
	
	/* 아이디 찾기 요청 관련 기능 */
	Member idFind(Member m);
	
	/* 비밀번호 찾기 요청 관련 기능 */
	Member pwdFind(Member m);
	
	/* 회원가입 요청 관련 기능 */
	int insertMember(Member m);
	
	/* 회원 정보 수정 관련 기능 */
	Member updateMember(Member m);
	
	/* 탈퇴 요청 관련 기능 */
	int deleteMember(String id, String pwd);
	
	/* 아이디 중복체크 */
	Member idCheck(Member m);
	
	/* 비밀번호 변경 */
	Member updatePassword(Member m);
}
