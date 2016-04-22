package kosta.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class SchoolAdminRegist implements Serializable {

	private String systemAdminId;
	private String schoolAdminId;
	private Timestamp schoolRegistDate;
	private Timestamp schoolEndDate;

	public String getSystemAdminId() {
		return systemAdminId;
	}

	public void setSystemAdminId(String systemAdminId) {
		this.systemAdminId = systemAdminId;
	}

	public String getSchoolAdminId() {
		return schoolAdminId;
	}

	public void setSchoolAdminId(String schoolAdminId) {
		this.schoolAdminId = schoolAdminId;
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
