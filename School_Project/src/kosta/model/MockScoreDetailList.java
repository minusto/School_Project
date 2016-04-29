package kosta.model;

import java.io.Serializable;

public class MockScoreDetailList implements Serializable {
	private String mockId;
	private String memberId;
	private String languageType;
	private int languageOriginalScore;
	private int languageStandardScore;
	private int languagePercentile;
	private String mathType;
	private int mathOriginalScore;
	private int mathStandardScore;
	private int mathpercentile;
	private int englishOriginalScore;
	private int englishStandardScore;
	private int englishpercentile;
	private String languageSubjectName;
	private String languageId;
	private int secondLanguageOriginalScore;
	private int secondLanguageStandardScore;
	private int secondLanguagePercentile;
	
	
	public MockScoreDetailList(){}


	public MockScoreDetailList(String mockId, String memberId, String languageType, int languageOriginalScore,
			int languageStandardScore, int languagePercentile, String mathType, int mathOriginalScore,
			int mathStandardScore, int mathpercentile, int englishOriginalScore, int englishStandardScore,
			int englishpercentile, String languageSubjectName, String languageId, int secondLanguageOriginalScore,
			int secondLanguageStandardScore, int secondLanguagePercentile) {
		super();
		this.mockId = mockId;
		this.memberId = memberId;
		this.languageType = languageType;
		this.languageOriginalScore = languageOriginalScore;
		this.languageStandardScore = languageStandardScore;
		this.languagePercentile = languagePercentile;
		this.mathType = mathType;
		this.mathOriginalScore = mathOriginalScore;
		this.mathStandardScore = mathStandardScore;
		this.mathpercentile = mathpercentile;
		this.englishOriginalScore = englishOriginalScore;
		this.englishStandardScore = englishStandardScore;
		this.englishpercentile = englishpercentile;
		this.languageSubjectName = languageSubjectName;
		this.languageId = languageId;
		this.secondLanguageOriginalScore = secondLanguageOriginalScore;
		this.secondLanguageStandardScore = secondLanguageStandardScore;
		this.secondLanguagePercentile = secondLanguagePercentile;
	}


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


	public String getLanguageType() {
		return languageType;
	}


	public void setLanguageType(String languageType) {
		this.languageType = languageType;
	}


	public int getLanguageOriginalScore() {
		return languageOriginalScore;
	}


	public void setLanguageOriginalScore(int languageOriginalScore) {
		this.languageOriginalScore = languageOriginalScore;
	}


	public int getLanguageStandardScore() {
		return languageStandardScore;
	}


	public void setLanguageStandardScore(int languageStandardScore) {
		this.languageStandardScore = languageStandardScore;
	}


	public int getLanguagePercentile() {
		return languagePercentile;
	}


	public void setLanguagePercentile(int languagePercentile) {
		this.languagePercentile = languagePercentile;
	}


	public String getMathType() {
		return mathType;
	}


	public void setMathType(String mathType) {
		this.mathType = mathType;
	}


	public int getMathOriginalScore() {
		return mathOriginalScore;
	}


	public void setMathOriginalScore(int mathOriginalScore) {
		this.mathOriginalScore = mathOriginalScore;
	}


	public int getMathStandardScore() {
		return mathStandardScore;
	}


	public void setMathStandardScore(int mathStandardScore) {
		this.mathStandardScore = mathStandardScore;
	}


	public int getMathpercentile() {
		return mathpercentile;
	}


	public void setMathpercentile(int mathpercentile) {
		this.mathpercentile = mathpercentile;
	}


	public int getEnglishOriginalScore() {
		return englishOriginalScore;
	}


	public void setEnglishOriginalScore(int englishOriginalScore) {
		this.englishOriginalScore = englishOriginalScore;
	}


	public int getEnglishStandardScore() {
		return englishStandardScore;
	}


	public void setEnglishStandardScore(int englishStandardScore) {
		this.englishStandardScore = englishStandardScore;
	}


	public int getEnglishpercentile() {
		return englishpercentile;
	}


	public void setEnglishpercentile(int englishpercentile) {
		this.englishpercentile = englishpercentile;
	}


	public String getLanguageSubjectName() {
		return languageSubjectName;
	}


	public void setLanguageSubjectName(String languageSubjectName) {
		this.languageSubjectName = languageSubjectName;
	}


	public String getLanguageId() {
		return languageId;
	}


	public void setLanguageId(String languageId) {
		this.languageId = languageId;
	}


	public int getSecondLanguageOriginalScore() {
		return secondLanguageOriginalScore;
	}


	public void setSecondLanguageOriginalScore(int secondLanguageOriginalScore) {
		this.secondLanguageOriginalScore = secondLanguageOriginalScore;
	}


	public int getSecondLanguageStandardScore() {
		return secondLanguageStandardScore;
	}


	public void setSecondLanguageStandardScore(int secondLanguageStandardScore) {
		this.secondLanguageStandardScore = secondLanguageStandardScore;
	}


	public int getSecondLanguagePercentile() {
		return secondLanguagePercentile;
	}


	public void setSecondLanguagePercentile(int secondLanguagePercentile) {
		this.secondLanguagePercentile = secondLanguagePercentile;
	}

	
}
