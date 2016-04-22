package kosta.model;

import java.io.Serializable;

public class RegistManage implements Serializable {

	private int registNum;
	private String schoolAdminId;
	private String memberId;
	private String userGrade;

	public int getRegistNum() {
		return registNum;
	}

	public void setRegistNum(int registNum) {
		this.registNum = registNum;
	}

	public String getSchoolAdminId() {
		return schoolAdminId;
	}

	public void setSchoolAdminId(String schoolAdminId) {
		this.schoolAdminId = schoolAdminId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
}
