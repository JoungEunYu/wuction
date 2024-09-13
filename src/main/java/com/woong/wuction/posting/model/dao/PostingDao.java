package com.woong.wuction.posting.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.woong.wuction.posting.model.vo.Image;
import com.woong.wuction.posting.model.vo.Posting;

public class PostingDao {

	public int insertPosting(SqlSession sqlSession, Posting newPost) {
		return sqlSession.insert("postingMapper.insertPosting", newPost);
	}

	public int insertImgFile(SqlSession sqlSession, Image img) {
		return sqlSession.insert("imageMapper.insertImgFile", img);
	}

}
