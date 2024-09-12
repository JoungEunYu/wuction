package com.woong.wuction.posting.service;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.common.MybatisTemplate;
import com.woong.wuction.posting.model.dao.PostingDao;
import com.woong.wuction.posting.model.vo.Posting;

public class PostingServiceImpl implements PostingService {
	@Override
	public Posting insertPosting(Posting newPost) {

		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		int result = new PostingDao().insertPosting(sqlSession, newPost);
		Posting post = null;
		
		if(result > 0) {
			sqlSession.commit();
			
			post = new PostingDao().selectPosting(sqlSession);
		}
		
		sqlSession.close();
		
		return post;
	}

	
}
