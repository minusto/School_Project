package kosta.model;

import java.io.Serializable;

public class MockType implements Serializable {
	private String mockId;
    private int mockYear;
    private int mockMonth;
    private int mockGrade;
    
	public String getMockId() {
		return mockId;
	}
	public void setMockId(String mockId) {
		this.mockId = mockId;
	}
	public int getMockYear() {
		return mockYear;
	}
	public void setMockYear(int mockYear) {
		this.mockYear = mockYear;
	}
	public int getMockMonth() {
		return mockMonth;
	}
	public void setMockMonth(int mockMonth) {
		this.mockMonth = mockMonth;
	}
	public int getMockGrade() {
		return mockGrade;
	}
	public void setMockGrade(int mockGrade) {
		this.mockGrade = mockGrade;
	}
}
