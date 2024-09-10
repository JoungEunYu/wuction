package com.woong.wuction.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		System.out.println(m);
		
		return sqlSession.selectOne("memberMapper.selectMember", m);
	}

}
