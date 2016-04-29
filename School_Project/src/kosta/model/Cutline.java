package kosta.model;

import java.io.Serializable;

public class Cutline implements Serializable {
	private String majorId;
	private String universityId;
	
	public Cutline(){};
	public Cutline(String majorId, String universityId) {
		super();
		this.majorId = majorId;
		this.universityId = universityId;
	}
	/**
	 * @return the majorId
	 */
	public String getMajorId() {
		return majorId;
	}
	/**
	 * @param majorId the majorId to set
	 */
	public void setMajorId(String majorId) {
		this.majorId = majorId;
	}
	/**
	 * @return the universityId
	 */
	public String getUniversityId() {
		return universityId;
	}
	/**
	 * @param universityId the universityId to set
	 */
	public void setUniversityId(String universityId) {
		this.universityId = universityId;
	}

	
	

}
