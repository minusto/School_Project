package kosta.model;

import java.io.Serializable;

public class SecondLaguage implements Serializable {
	
	private String languageId;
    private String languageSubjectName;
    
	public String getLanguageId() {
		return languageId;
	}
	public void setLanguageId(String languageId) {
		this.languageId = languageId;
	}
	public String getLanguageSubjectName() {
		return languageSubjectName;
	}
	public void setLanguageSubjectName(String languageSubjectName) {
		this.languageSubjectName = languageSubjectName;
	}    
}
