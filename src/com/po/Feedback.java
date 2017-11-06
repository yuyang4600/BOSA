package com.po;

public class Feedback {
	private String feedback_text;
	private String phone_number;
	
	public String getFeedback_text() {
		return feedback_text;
	}
	public void setFeedback_text(String feedback_text) {
		this.feedback_text = feedback_text;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
	@Override
	public String toString() {
		return "Feedback [feedback_text=" + feedback_text + ", phone_number=" + phone_number + "]";
	}
	
	
}
