package kosta.model;

import java.io.Serializable;

public class MockTest implements Serializable {

	private String mockId;
    private String memberId;
    private Integer languageOriginalScore;
    private Integer languageStandardScore;
    private String languageType;
    private String mathType;
    private Integer mathOriginalScore;
    private Integer mathStandardScore;
    private Integer englishOriginalScore;
    private Integer englishStandardScore;
    private String languageId;
    
	public String getMockId() {
		return mockId;
	}
	public void setMockId(String mockId) {
		this.mockId = mockId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Integer getLanguageOriginalScore() {
		return languageOriginalScore;
	}
	public void setLanguageOriginalScore(Integer languageOriginalScore) {
		this.languageOriginalScore = languageOriginalScore;
	}
	public Integer getLanguageStandardScore() {
		return languageStandardScore;
	}
	public void setLanguageStandardScore(Integer languageStandardScore) {
		this.languageStandardScore = languageStandardScore;
	}
	public String getLanguageType() {
		return languageType;
	}
	public void setLanguageType(String languageType) {
		this.languageType = languageType;
	}
	public String getMathType() {
		return mathType;
	}
	public void setMathType(String mathType) {
		this.mathType = mathType;
	}
	public Integer getMathOriginalScore() {
		return mathOriginalScore;
	}
	public void setMathOriginalScore(Integer mathOriginalScore) {
		this.mathOriginalScore = mathOriginalScore;
	}
	public Integer getMathStandardScore() {
		return mathStandardScore;
	}
	public void setMathStandardScore(Integer mathStandardScore) {
		this.mathStandardScore = mathStandardScore;
	}
	public Integer getEnglishOriginalScore() {
		return englishOriginalScore;
	}
	public void setEnglishOriginalScore(Integer englishOriginalScore) {
		this.englishOriginalScore = englishOriginalScore;
	}
	public Integer getEnglishStandardScore() {
		return englishStandardScore;
	}
	public void setEnglishStandardScore(Integer englishStandardScore) {
		this.englishStandardScore = englishStandardScore;
	}
	public String getLanguageId() {
		return languageId;
	}
	public void setLanguageId(String languageId) {
		this.languageId = languageId;
	}
}
