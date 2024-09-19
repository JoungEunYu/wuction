package com.woong.wuction.posting.service;

import java.util.ArrayList;

import com.woong.wuction.posting.model.dto.MainPagePosting;
import com.woong.wuction.posting.model.vo.Bid;
import com.woong.wuction.posting.model.vo.Image;
import com.woong.wuction.posting.model.vo.Posting;

public interface PostingService {
	
	Posting insertPosting(Posting newPost);
	
	void insertImgFile(Image img);
	
	/* 게시물 리스트 조회 */
	ArrayList<MainPagePosting> loadPostingList();
	
	/* 선택한 게시물 상세 내용 조회 */
	Posting selectPosting(Posting selectPost);
	
	/* 선택한 게시물의 이미지 리스트 조회 */
	ArrayList<Image> selectImgList(Posting selectPost);
	
	/* 선택한 게시물의 입찰 내역 리스트 조회 */
	ArrayList<Bid> selectBidList(Posting selectPost);
}
