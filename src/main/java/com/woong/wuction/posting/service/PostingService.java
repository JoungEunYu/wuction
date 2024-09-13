package com.woong.wuction.posting.service;

import java.util.ArrayList;

import com.woong.wuction.posting.model.vo.Image;
import com.woong.wuction.posting.model.vo.Posting;

public interface PostingService {
	
	Posting insertPosting(Posting newPost);
	
	void insertImgFile(Image img);
	
	/* 게시물 리스트 조회 */
	ArrayList<Posting> selectPostingList();
	
	/* 선택한 게시물 상세 내용 조회 */
	Posting selectPosting(Posting selectPost);
}
