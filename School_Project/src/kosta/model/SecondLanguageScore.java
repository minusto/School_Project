package kosta.model;

import java.io.Serializable;

public class SecondLanguageScore implements Serializable{
	private String mockId;
    private String memberId;
    private int secondLanguageOriginalScore;
    private int secondLanguageStandardScore;
    
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
}
