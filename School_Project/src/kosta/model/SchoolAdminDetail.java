package kosta.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class SchoolAdminDetail implements Serializable {
	private String schoolName;
	private String schoolAdminId;
	private String schoolAdminName;
	private String schoolAdminTel;
	private String deleteRequest;
	private Timestamp schoolRegistDate;
	private Timestamp schoolEndDate;
	
	public SchoolAdminDetail(){}

	public SchoolAdminDetail(String schoolName, String schoolAdminId, String schoolAdminName, String schoolAdminTel,
			String deleteRequest, Timestamp schoolRegistDate, Timestamp schoolEndDate) {
		super();
		this.schoolName = schoolName;
		this.schoolAdminId = schoolAdminId;
		this.schoolAdminName = schoolAdminName;
		this.schoolAdminTel = schoolAdminTel;
		this.deleteRequest = deleteRequest;
		this.schoolRegistDate = schoolRegistDate;
		this.schoolEndDate = schoolEndDate;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

	public String getSchoolAdminId() {
		return schoolAdminId;
	}

	public void setSchoolAdminId(String schoolAdminId) {
		this.schoolAdminId = schoolAdminId;
	}

	public String getSchoolAdminName() {
		return schoolAdminName;
	}

	public void setSchoolAdminName(String schoolAdminName) {
		this.schoolAdminName = schoolAdminName;
	}

	public String getSchoolAdminTel() {
		return schoolAdminTel;
	}

	public void setSchoolAdminTel(String schoolAdminTel) {
		this.schoolAdminTel = schoolAdminTel;
	}

	public String getDeleteRequest() {
		return deleteRequest;
	}

	public void setDeleteRequest(String deleteRequest) {
		this.deleteRequest = deleteRequest;
	}

	public Timestamp getSchoolRegistDate() {
		return schoolRegistDate;
	}

	public void setSchoolRegistDate(Timestamp schoolRegistDate) {
		this.schoolRegistDate = schoolRegistDate;
	}

	public Timestamp getSchoolEndDate() {
		return schoolEndDate;
	}

	public void setSchoolEndDate(Timestamp schoolEndDate) {
		this.schoolEndDate = schoolEndDate;
	}
	
	
}
