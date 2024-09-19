package com.woong.wuction.posting.model.vo;

public class Image {
	private int imgNo;
	private int postingNo;
	private String imgFile;
	
	public Image() {
		super();
	}
	
	

	public Image(int imgNo, int postingNo, String imgFile) {
		super();
		this.imgNo = imgNo;
		this.postingNo = postingNo;
		this.imgFile = imgFile;
	}



	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public int getPostingNo() {
		return postingNo;
	}

	public void setPostingNo(int postingNo) {
		this.postingNo = postingNo;
	}

	public String getImgFile() {
		return imgFile;
	}

	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}



	@Override
	public String toString() {
		return "Image [imgNo=" + imgNo + ", postingNo=" + postingNo + ", imgFile=" + imgFile + "]";
	}
	
	
	
}
