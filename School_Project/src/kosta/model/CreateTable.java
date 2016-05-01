package kosta.model;

import java.io.Serializable;

public class CreateTable implements Serializable{
	private int num;
	private String subjectId ;
	private String subjectGrade;
	private String subjectType;
	private String subjectName;
	private String subjectUnit;
	
	public CreateTable(){}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	public String getSubjectGrade() {
		return subjectGrade;
	}

	public void setSubjectGrade(String subjectGrade) {
		this.subjectGrade = subjectGrade;
	}

	public String getSubjectType() {
		return subjectType;
	}

	public void setSubjectType(String subjectType) {
		this.subjectType = subjectType;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getSubjectUnit() {
		return subjectUnit;
	}

	public void setSubjectUnit(String subjectUnit) {
		this.subjectUnit = subjectUnit;
	}
	
	
	

}
