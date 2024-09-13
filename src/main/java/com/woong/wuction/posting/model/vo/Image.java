package com.woong.wuction.posting.model.vo;

public class Image {
	private int postingNo;
	private String imgFile;
	
	public Image() {
		super();
	}
	
	public Image(int postingNo, String imgFile) {
		super();
		this.postingNo = postingNo;
		this.imgFile = imgFile;
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
		return "Image [postingNo=" + postingNo + ", imgFile=" + imgFile + "]";
	}
	
	
}
