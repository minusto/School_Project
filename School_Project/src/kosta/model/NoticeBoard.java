package kosta.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class NoticeBoard implements Serializable {

	private int noticeBoardNum;
	private String noticeBoardTitle;
	private Timestamp noticeBoardDate;
	private String noticeBoardPassword;
	private int noticeBoardHitcount;
	private String noticeBoardFileName;
	private String noticeBoardContent;
	private String schoolAdminId;

	public int getNoticeBoardNum() {
		return noticeBoardNum;
	}

	public void setNoticeBoardNum(int noticeBoardNum) {
		this.noticeBoardNum = noticeBoardNum;
	}

	public String getNoticeBoardTitle() {
		return noticeBoardTitle;
	}

	public void setNoticeBoardTitle(String noticeBoardTitle) {
		this.noticeBoardTitle = noticeBoardTitle;
	}

	public Timestamp getNoticeBoardDate() {
		return noticeBoardDate;
	}

	public void setNoticeBoardDate(Timestamp noticeBoardDate) {
		this.noticeBoardDate = noticeBoardDate;
	}

	public String getNoticeBoardPassword() {
		return noticeBoardPassword;
	}

	public void setNoticeBoardPassword(String noticeBoardPassword) {
		this.noticeBoardPassword = noticeBoardPassword;
	}

	public int getNoticeBoardHitcount() {
		return noticeBoardHitcount;
	}

	public void setNoticeBoardHitcount(int noticeBoardHitcount) {
		this.noticeBoardHitcount = noticeBoardHitcount;
	}

	public String getNoticeBoardFileName() {
		return noticeBoardFileName;
	}

	public void setNoticeBoardFileName(String noticeBoardFileName) {
		this.noticeBoardFileName = noticeBoardFileName;
	}

	public String getNoticeBoardContent() {
		return noticeBoardContent;
	}

	public void setNoticeBoardContent(String noticeBoardContent) {
		this.noticeBoardContent = noticeBoardContent;
	}

	public String getSchoolAdminId() {
		return schoolAdminId;
	}

	public void setSchoolAdminId(String schoolAdminId) {
		this.schoolAdminId = schoolAdminId;
	}
}
