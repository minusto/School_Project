package kosta.model;

import java.io.Serializable;

public class EntranceInfo implements Serializable{

	 	private String majorId;
	    private String universityId;
	    private int entranceYear;
	    private double mockTestCutline;
	    private double totalExamCutline;
	    private int mockTestRecruitNum;
	    private int totalExamRecruitNum;
	    
		public String getMajorId() {
			return majorId;
		}
		public void setMajorId(String majorId) {
			this.majorId = majorId;
		}
		public String getUniversityId() {
			return universityId;
		}
		public void setUniversityId(String universityId) {
			this.universityId = universityId;
		}
		public int getEntranceYear() {
			return entranceYear;
		}
		public void setEntranceYear(int entranceYear) {
			this.entranceYear = entranceYear;
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
