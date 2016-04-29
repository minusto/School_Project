package kosta.model;

import java.io.Serializable;

public class MockKorAvgScore implements Serializable {
	private String mockId;
	private double avg;
	
	public MockKorAvgScore(){}
	
	public MockKorAvgScore(String mockId, double avg) {
		super();
		this.mockId = mockId;
		this.avg = avg;
	}
	public String getMockId() {
		return mockId;
	}
	public void setMockId(String mockId) {
		this.mockId = mockId;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	
}
