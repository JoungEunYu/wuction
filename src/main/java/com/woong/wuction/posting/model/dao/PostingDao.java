package com.woong.wuction.posting.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.posting.model.vo.Posting;

public class PostingDao {

	public int insertPosting(SqlSession sqlSession, Posting newPost) {
		return sqlSession.insert("postingMapper.insertPosting", newPost);
	}

	public Posting selectPosting(SqlSession sqlSession) {
		return sqlSession.selectOne("postingMapper.selectPosting");
	}

}
