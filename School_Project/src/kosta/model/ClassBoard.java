package kosta.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ClassBoard implements Serializable {

	private int classBoardNum;
	private String classBoardTitle;
	private String classBoardContent;
	private Timestamp classBoardDate;
	private String classBoardPassword;
	private int classBoardHitcount;
	private String classBoardFileName;
	private int classBoardRef;
	private int classBoardStep;
	private int classBoardLevel;
	private String userId;

	public int getClassBoardNum() {
		return classBoardNum;
	}

	public void setClassBoardNum(int classBoardNum) {
		this.classBoardNum = classBoardNum;
	}

	public String getClassBoardTitle() {
		return classBoardTitle;
	}

	public void setClassBoardTitle(String classBoardTitle) {
		this.classBoardTitle = classBoardTitle;
	}

	public String getClassBoardContent() {
		return classBoardContent;
	}

	public void setClassBoardContent(String classBoardContent) {
		this.classBoardContent = classBoardContent;
	}

	public Timestamp getClassBoardDate() {
		return classBoardDate;
	}

	public void setClassBoardDate(Timestamp classBoardDate) {
		this.classBoardDate = classBoardDate;
	}

	public String getClassBoardPassword() {
		return classBoardPassword;
	}

	public void setClassBoardPassword(String classBoardPassword) {
		this.classBoardPassword = classBoardPassword;
	}

	public int getClassBoardHitcount() {
		return classBoardHitcount;
	}

	public void setClassBoardHitcount(int classBoardHitcount) {
		this.classBoardHitcount = classBoardHitcount;
	}

	public String getClassBoardFileName() {
		return classBoardFileName;
	}

	public void setClassBoardFileName(String classBoardFileName) {
		this.classBoardFileName = classBoardFileName;
	}

	public int getClassBoardRef() {
		return classBoardRef;
	}

	public void setClassBoardRef(int classBoardRef) {
		this.classBoardRef = classBoardRef;
	}

	public int getClassBoardStep() {
		return classBoardStep;
	}

	public void setClassBoardStep(int classBoardStep) {
		this.classBoardStep = classBoardStep;
	}

	public int getClassBoardLevel() {
		return classBoardLevel;
	}

	public void setClassBoardLevel(int classBoardLevel) {
		this.classBoardLevel = classBoardLevel;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
