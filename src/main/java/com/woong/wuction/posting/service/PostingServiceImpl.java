package com.woong.wuction.posting.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.common.MybatisTemplate;
import com.woong.wuction.posting.model.dao.PostingDao;
import com.woong.wuction.posting.model.vo.Image;
import com.woong.wuction.posting.model.vo.Posting;

public class PostingServiceImpl implements PostingService {
	@Override
	public Posting insertPosting(Posting newPost) {

		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		int result = new PostingDao().insertPosting(sqlSession, newPost);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return newPost;
	}

	public void insertImgFile(Image img) {
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		int result = new PostingDao().insertImgFile(sqlSession, img);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();

	}

	@Override
	public ArrayList<Posting> selectPostingList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Posting selectPosting(Posting selectPost) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
