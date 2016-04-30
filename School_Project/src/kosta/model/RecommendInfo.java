package kosta.model;

import java.io.Serializable;

public class RecommendInfo implements Serializable {
   private String universityName;
   private String universityURL;
   private String universityMark;
   private String majorName;
   private double mockTestCutline;

   @Override
public String toString() {
	return "RecommendInfo [universityName=" + universityName
			+ ", universityURL=" + universityURL + ", universityMark="
			+ universityMark + ", majorName=" + majorName
			+ ", mockTestCutline=" + mockTestCutline + "]";
}
public String getUniversityName() {
      return universityName;
   }
   public void setUniversityName(String universityName) {
      this.universityName = universityName;
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
   
   public String getMajorName() {
      return majorName;
   }
   public void setMajorName(String majorName) {
      this.majorName = majorName;
   }
   
   public double getMockTestCutline() {
      return mockTestCutline;
   }
   public void setMockTestCutline(double mockTestCutline) {
      this.mockTestCutline = mockTestCutline;
   }
      
}