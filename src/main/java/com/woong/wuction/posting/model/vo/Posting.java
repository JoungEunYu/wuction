package com.woong.wuction.posting.model.vo;

public class Posting {
	private int postingNo;
	private int memNo;
	private int categoryNo;
	private String productInfo;
	private String productName;
	private String endTime;
	private String startTime;
	private int startPrice;
	private String status;
	
	public Posting() {}
	
	
	
	public Posting(int memNo, int categoryNo, String productInfo, String productName, String endTime, int startPrice) {
		super();
		this.memNo = memNo;
		this.categoryNo = categoryNo;
		this.productInfo = productInfo;
		this.productName = productName;
		this.endTime = endTime;
		this.startPrice = startPrice;
	}



	public Posting(int postingNo, int memNo, int categoryNo, String productInfo, String productName,
			String endTime, String startTime, int startPrice, String status) {
		super();
		this.postingNo = postingNo;
		this.memNo = memNo;
		this.categoryNo = categoryNo;
		this.productInfo = productInfo;
		this.productName = productName;
		this.endTime = endTime;
		this.startTime = startTime;
		this.startPrice = startPrice;
		this.status = status;
	}

	public int getPostingNo() {
		return postingNo;
	}

	public void setPostingNo(int postingNo) {
		this.postingNo = postingNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}


	public String getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public int getStartPrice() {
		return startPrice;
	}

	public void setStartPrice(int startPrice) {
		this.startPrice = startPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Posting [postingNo=" + postingNo + ", memNo=" + memNo + ", categoryNo=" + categoryNo + ", productInfo=" + productInfo + ", productName=" + productName + ", endTime=" + endTime + ", startTime=" + startTime + ", startPrice=" + startPrice + ", status="
				+ status + "]";
	}
	
	
	
}
