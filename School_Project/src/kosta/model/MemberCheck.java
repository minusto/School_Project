package kosta.model;

import java.io.Serializable;

public class MemberCheck implements Serializable {
	private String memberId;
	private String memberPassword;
	private String memberGrade;
	
	public MemberCheck(){}

	public MemberCheck(String memberId, String memberPassword, String memberGrade) {
		super();
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberGrade = memberGrade;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	
	
}
