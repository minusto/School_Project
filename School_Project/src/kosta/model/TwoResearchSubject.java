package kosta.model;

public class TwoResearchSubject {
	private String researchSubjectName1;
	private String researchSubjectName2;
	private int researchSubjectOriginalScore1;
	private int researchSubjectStandardScore1;
	private double researchSubjectPercentile1;
	private int researchSubjectOriginalScore2;
	private int researchSubjectStandardScore2;
	private double researchSubjectPercentile2;
	
	public TwoResearchSubject() {}

	public TwoResearchSubject(String researchSubjectName1, String researchSubjectName2,
			int researchSubjectOriginalScore1, int researchSubjectStandardScore1, double researchSubjectPercentile1,
			int researchSubjectOriginalScore2, int researchSubjectStandardScore2, double researchSubjectPercentile2) {
		super();
		this.researchSubjectName1 = researchSubjectName1;
		this.researchSubjectName2 = researchSubjectName2;
		this.researchSubjectOriginalScore1 = researchSubjectOriginalScore1;
		this.researchSubjectStandardScore1 = researchSubjectStandardScore1;
		this.researchSubjectPercentile1 = researchSubjectPercentile1;
		this.researchSubjectOriginalScore2 = researchSubjectOriginalScore2;
		this.researchSubjectStandardScore2 = researchSubjectStandardScore2;
		this.researchSubjectPercentile2 = researchSubjectPercentile2;
	}

	public String getResearchSubjectName1() {
		return researchSubjectName1;
	}

	public void setResearchSubjectName1(String researchSubjectName1) {
		this.researchSubjectName1 = researchSubjectName1;
	}

	public String getResearchSubjectName2() {
		return researchSubjectName2;
	}

	public void setResearchSubjectName2(String researchSubjectName2) {
		this.researchSubjectName2 = researchSubjectName2;
	}

	public int getResearchSubjectOriginalScore1() {
		return researchSubjectOriginalScore1;
	}

	public void setResearchSubjectOriginalScore1(int researchSubjectOriginalScore1) {
		this.researchSubjectOriginalScore1 = researchSubjectOriginalScore1;
	}

	public int getResearchSubjectStandardScore1() {
		return researchSubjectStandardScore1;
	}

	public void setResearchSubjectStandardScore1(int researchSubjectStandardScore1) {
		this.researchSubjectStandardScore1 = researchSubjectStandardScore1;
	}

	public double getResearchSubjectPercentile1() {
		return researchSubjectPercentile1;
	}

	public void setResearchSubjectPercentile1(double researchSubjectPercentile1) {
		this.researchSubjectPercentile1 = researchSubjectPercentile1;
	}

	public int getResearchSubjectOriginalScore2() {
		return researchSubjectOriginalScore2;
	}

	public void setResearchSubjectOriginalScore2(int researchSubjectOriginalScore2) {
		this.researchSubjectOriginalScore2 = researchSubjectOriginalScore2;
	}

	public int getResearchSubjectStandardScore2() {
		return researchSubjectStandardScore2;
	}

	public void setResearchSubjectStandardScore2(int researchSubjectStandardScore2) {
		this.researchSubjectStandardScore2 = researchSubjectStandardScore2;
	}

	public double getResearchSubjectPercentile2() {
		return researchSubjectPercentile2;
	}

	public void setResearchSubjectPercentile2(double researchSubjectPercentile2) {
		this.researchSubjectPercentile2 = researchSubjectPercentile2;
	}
	
	
}
