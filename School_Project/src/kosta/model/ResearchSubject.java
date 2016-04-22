package kosta.model;

import java.io.Serializable;

public class ResearchSubject implements Serializable {

	private String researchSubjectId;
	private String researchSubjectName;

	public String getResearchSubjectId() {
		return researchSubjectId;
	}

	public void setResearchSubjectId(String researchSubjectId) {
		this.researchSubjectId = researchSubjectId;
	}

	public String getResearchSubjectName() {
		return researchSubjectName;
	}

	public void setResearchSubjectName(String researchSubjectName) {
		this.researchSubjectName = researchSubjectName;
	}

}
