package com.woong.wuction.member.model.vo;

public class Member {
	private int memNo;
	private String memId;
	private String memPwd;
	private String name;
	private String birthDate;
	private String postCode;
	private String fullAddress;
	private String email;
	private String joinDate;
	private String status;
	
	
	public Member() {
		super();
	}

	public Member(int memNo, String memId, String memPwd, String name, String birthDate, String postCode,
			String fullAddress, String email, String joinDate, String status) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.name = name;
		this.birthDate = birthDate;
		this.postCode = postCode;
		this.fullAddress = fullAddress;
		this.email = email;
		this.joinDate = joinDate;
		this.status = status;
	}

	public Member(String memId, String memPwd, String name, String birthDate, String postCode,
			String fullAddress, String email) {
		super();
		this.memId = memId;
		this.memPwd = memPwd;
		this.name = name;
		this.birthDate = birthDate;
		this.postCode = postCode;
		this.fullAddress = fullAddress;
		this.email = email;
	}
	
	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", name=" + name + ", birthDate="
				+ birthDate + ", postCode=" + postCode + ", fullAddress=" + fullAddress + ", email=" + email
				+ ", joinDate=" + joinDate + ", status=" + status + "]";
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getFullAddress() {
		return fullAddress;
	}

	public void setFullAddress(String fullAddress) {
		this.fullAddress = fullAddress;
	}

	

	
	
	
}
