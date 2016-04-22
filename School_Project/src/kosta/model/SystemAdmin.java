package kosta.model;

import java.io.Serializable;

public class SystemAdmin implements Serializable {

	private String systemAdminId;
	private String systemAdminPassword;

	public String getSystemAdminId() {
		return systemAdminId;
	}

	public void setSystemAdminId(String systemAdminId) {
		this.systemAdminId = systemAdminId;
	}

	public String getSystemAdminPassword() {
		return systemAdminPassword;
	}

	public void setSystemAdminPassword(String systemAdminPassword) {
		this.systemAdminPassword = systemAdminPassword;
	}
}
