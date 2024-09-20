package com.woong.wuction.mypage.service;

import java.util.ArrayList;

import com.woong.wuction.posting.model.vo.Bid;

public interface MyPageService {
	
	/* 나의 입찰 목록 */
	ArrayList<Bid> mybid (int userNo);
}
