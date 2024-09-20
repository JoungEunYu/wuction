package com.woong.wuction.mypage.service;


import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.common.MybatisTemplate;
import com.woong.wuction.member.model.vo.Member;
import com.woong.wuction.mypage.dao.MyPageDao;
import com.woong.wuction.posting.model.vo.Bid;

public class MyPageServiceImpl {
	
	private MyPageDao mpDao = new MyPageDao();

	public ArrayList<Bid> selectBidList(Member user) {
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		ArrayList<Bid> bidList = mpDao.selectBidList(sqlSession, user);
		
		sqlSession.close();
		
		return bidList;
	}
	
	
}
