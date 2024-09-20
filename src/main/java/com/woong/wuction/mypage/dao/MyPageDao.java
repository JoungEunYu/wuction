package com.woong.wuction.mypage.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.member.model.vo.Member;
import com.woong.wuction.posting.model.vo.Bid;

public class MyPageDao {

	public ArrayList<Bid> selectBidList(SqlSession sqlSession, Member user) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectMyBidList", user);
	}


}
