package kosta.model;

import java.io.Serializable;

public class ResearchSubjectScore implements Serializable {

	private String mockId;
	private String researchSubjectId;
	private String memberId;
	private int researchSubjectOriginalScore;
	private int researchSubjectStandardScore;

	public String getMockId() {
		return mockId;
	}

	public void setMockId(String mockId) {
		this.mockId = mockId;
	}

	public String getResearchSubjectId() {
		return researchSubjectId;
	}

	public void setResearchSubjectId(String researchSubjectId) {
		this.researchSubjectId = researchSubjectId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getResearchSubjectOriginalScore() {
		return researchSubjectOriginalScore;
	}

	public void setResearchSubjectOriginalScore(int researchSubjectOriginalScore) {
		this.researchSubjectOriginalScore = researchSubjectOriginalScore;
	}

	public int getResearchSubjectStandardScore() {
		return researchSubjectStandardScore;
	}

	public void setResearchSubjectStandardScore(int researchSubjectStandardScore) {
		this.researchSubjectStandardScore = researchSubjectStandardScore;
	}

}