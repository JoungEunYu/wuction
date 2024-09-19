package com.woong.wuction.posting.model.vo;

public class Bid {
	private int bidNo;
	private int postingNo;
	private String memNo;	// 추가할때는 회원번호, 조회할때는 회원아이디
	private long bidPrice;
	private String bidTime;
	
	public Bid() {
		super();
	}

	public Bid(int bidNo, int postingNo, String memNo, long bidPrice, String bidTime) {
		super();
		this.bidNo = bidNo;
		this.postingNo = postingNo;
		this.memNo = memNo;
		this.bidPrice = bidPrice;
		this.bidTime = bidTime;
	}

	public int getBidNo() {
		return bidNo;
	}

	public void setBidNo(int bidNo) {
		this.bidNo = bidNo;
	}

	public int getPostingNo() {
		return postingNo;
	}

	public void setPostingNo(int postingNo) {
		this.postingNo = postingNo;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public long getBidPrice() {
		return bidPrice;
	}

	public void setBidPrice(long bidPrice) {
		this.bidPrice = bidPrice;
	}

	public String getBidTime() {
		return bidTime;
	}

	public void setBidTime(String bidTime) {
		this.bidTime = bidTime;
	}

	@Override
	public String toString() {
		return "Bid [bidNo=" + bidNo + ", postingNo=" + postingNo + ", memNo=" + memNo + ", bidPrice=" + bidPrice
				+ ", bidTime=" + bidTime + "]";
	}
	
	
}
