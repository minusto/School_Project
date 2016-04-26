package kosta.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Message implements Serializable {

	private int messageNum;
	private String sender;
	private String receiver;
	private String messageContent;
	private String messageReadCheck;
	private Timestamp messageReceiveDate;
	private String memberId;

	public int getMessageNum() {
		return messageNum;
	}

	public void setMessageNum(int messageNum) {
		this.messageNum = messageNum;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getMessageContent() {
		return messageContent;
	}

	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}

	public String getMessageReadCheck() {
		return messageReadCheck;
	}

	public void setMessageReadCheck(String messageReadCheck) {
		this.messageReadCheck = messageReadCheck;
	}

	public Timestamp getMessageReceiveDate() {
		return messageReceiveDate;
	}

	public void setMessageReceiveDate(Timestamp messageReceiveDate) {
		this.messageReceiveDate = messageReceiveDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

}
