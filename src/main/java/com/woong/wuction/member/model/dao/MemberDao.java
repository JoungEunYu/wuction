package com.woong.wuction.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.selectMember", m);
	}

	public int insertMember(SqlSession sqlSession, Member m) {

		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public Member idCheck(SqlSession sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.selectId", m);
	}

}
