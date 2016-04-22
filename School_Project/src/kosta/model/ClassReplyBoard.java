package kosta.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ClassReplyBoard implements Serializable {

	private int replyNum;
	private int classBoardNum;
	private String replyWriter;
	private String replyContent;
	private Timestamp replyDate;
	private String replyPassword;

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}

	public int getClassBoardNum() {
		return classBoardNum;
	}

	public void setClassBoardNum(int classBoardNum) {
		this.classBoardNum = classBoardNum;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Timestamp getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Timestamp replyDate) {
		this.replyDate = replyDate;
	}

	public String getReplyPassword() {
		return replyPassword;
	}

	public void setReplyPassword(String replyPassword) {
		this.replyPassword = replyPassword;
	}
}
