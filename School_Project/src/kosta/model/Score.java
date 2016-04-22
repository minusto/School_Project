package kosta.model;

import java.io.Serializable;

public class Score implements Serializable {

	private String subjectId;
	private String memberId;
	private int midExam;
	private int finalExam;
	private int perfomanceEvaluation;

	public String getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getMidExam() {
		return midExam;
	}

	public void setMidExam(int midExam) {
		this.midExam = midExam;
	}

	public int getFinalExam() {
		return finalExam;
	}

	public void setFinalExam(int finalExam) {
		this.finalExam = finalExam;
	}

	public int getPerfomanceEvaluation() {
		return perfomanceEvaluation;
	}

	public void setPerfomanceEvaluation(int perfomanceEvaluation) {
		this.perfomanceEvaluation = perfomanceEvaluation;
	}

}
