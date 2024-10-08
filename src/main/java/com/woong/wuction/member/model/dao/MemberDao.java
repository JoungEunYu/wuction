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

	public int updateMember(SqlSession sqlSession, Member m) {

		return sqlSession.update("memberMapper.updateMember", m);
	}

	public Member emailCheck(SqlSession sqlSession, Member m) {

		return sqlSession.selectOne("memberMapper.selectEmail", m);
	}

	public int updatePassword(SqlSession sqlSession, Member m) {

		return sqlSession.update("memberMapper.updatePassword", m);
	}

	public int deleteMember(SqlSession sqlSession, Member m) {

		return sqlSession.update("memberMapper.deleteMember", m);
	}

	public int pwdFind(SqlSession sqlSession, Member m) {

		return sqlSession.update("memberMapper.pwdFindMember", m);
	}

}
