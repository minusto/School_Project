package kosta.model;

import java.io.Serializable;

public class ExistStudentList implements Serializable {
	private String memberId;
	private String memberName;
	private String studentCode;
	private int studentGrade;
	private int studentclass;
	private int studentNum;
	
	public ExistStudentList() {}

	public ExistStudentList(String memberId, String memberName, String studentCode, int studentGrade, int studentclass,
			int studentNum) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.studentCode = studentCode;
		this.studentGrade = studentGrade;
		this.studentclass = studentclass;
		this.studentNum = studentNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getStudentCode() {
		return studentCode;
	}

	public void setStudentCode(String studentCode) {
		this.studentCode = studentCode;
	}

	public int getStudentGrade() {
		return studentGrade;
	}

	public void setStudentGrade(int studentGrade) {
		this.studentGrade = studentGrade;
	}

	public int getStudentclass() {
		return studentclass;
	}

	public void setStudentclass(int studentclass) {
		this.studentclass = studentclass;
	}

	public int getStudentNum() {
		return studentNum;
	}

	public void setStudentNum(int studentNum) {
		this.studentNum = studentNum;
	}
	
	
}
