package kosta.model;

import java.io.Serializable;

public class University implements Serializable{
		private String universityId;
	    private String universityName;
	    private String campusName;
	    private String universityLocal;
	    private String universityUrl;
	    
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
		public String getUniversityUrl() {
			return universityUrl;
		}
		public void setUniversityUrl(String universityUrl) {
			this.universityUrl = universityUrl;
		}
}
