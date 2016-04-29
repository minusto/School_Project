package kosta.model;

import java.io.Serializable;

public class AllEntranceInfo implements Serializable {
	private String universityId;
	private String universityName;
	private String campusName;
	private String universityLocal;
	private String universityURL;
	private String universityMark;
	private String majorId;
	private String majorName;
	private int entranceInfo;
	private double mockTestCutline;
	private double totalExamCutline;
	private int mockTestRecruitNum;
	private int totalExamRecruitNum;

	public String getUniversityId() {
		return universityId;
	}
	public void setUniversityId(String universityId) {
		this.universityId = universityId;
	}
	public String getUniversityName() {
		return universityName;
	}
	public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}
	public String getCampusName() {
		return campusName;
	}
	public void setCampusName(String campusName) {
		this.campusName = campusName;
	}
	public String getUniversityLocal() {
		return universityLocal;
	}
	public void setUniversityLocal(String universityLocal) {
		this.universityLocal = universityLocal;
	}
	public String getUniversityURL() {
		return universityURL;
	}
	public void setUniversityURL(String universityURL) {
		this.universityURL = universityURL;
	}
	public String getUniversityMark() {
		return universityMark;
	}
	public void setUniversityMark(String universityMark) {
		this.universityMark = universityMark;
	}
	public String getMajorId() {
		return majorId;
	}
	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public int getEntranceInfo() {
		return entranceInfo;
	}
	public void setEntranceInfo(int entranceInfo) {
		this.entranceInfo = entranceInfo;
	}
	public double getMockTestCutline() {
		return mockTestCutline;
	}
	public void setMockTestCutline(double mockTestCutline) {
		this.mockTestCutline = mockTestCutline;
	}
	public double getTotalExamCutline() {
		return totalExamCutline;
	}
	public void setTotalExamCutline(double totalExamCutline) {
		this.totalExamCutline = totalExamCutline;
	}
	public int getMockTestRecruitNum() {
		return mockTestRecruitNum;
	}
	public void setMockTestRecruitNum(int mockTestRecruitNum) {
		this.mockTestRecruitNum = mockTestRecruitNum;
	}
	public int getTotalExamRecruitNum() {
		return totalExamRecruitNum;
	}
	public void setTotalExamRecruitNum(int totalExamRecruitNum) {
		this.totalExamRecruitNum = totalExamRecruitNum;
	}
	
}
