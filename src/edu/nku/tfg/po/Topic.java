package edu.nku.tfg.po;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Topic implements Serializable {

	private int topicID;
	private int userID;
	private int schoolID;
	private String topicTitle;
	private String topicText;
	private Date topicTime;
	private int stick;
	private int clickTimes;
	public Topic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Topic(int topicID, int userID, int schoolID, String topicTitle,
			String topicText, Date topicTime, int stick, int clickTimes) {
		super();
		this.topicID = topicID;
		this.userID = userID;
		this.schoolID = schoolID;
		this.topicTitle = topicTitle;
		this.topicText = topicText;
		this.topicTime = topicTime;
		this.stick = stick;
		this.clickTimes = clickTimes;
	}
	public int getTopicID() {
		return topicID;
	}
	public void setTopicID(int topicID) {
		this.topicID = topicID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getSchoolID() {
		return schoolID;
	}
	public void setSchoolID(int schoolID) {
		this.schoolID = schoolID;
	}
	public String getTopicTitle() {
		return topicTitle;
	}
	public void setTopicTitle(String topicTitle) {
		this.topicTitle = topicTitle;
	}
	public String getTopicText() {
		return topicText;
	}
	public void setTopicText(String topicText) {
		this.topicText = topicText;
	}
	public Date getTopicTime() {
		return topicTime;
	}
	public void setTopicTime(Date topicTime) {
		this.topicTime = topicTime;
	}
	public int getStick() {
		return stick;
	}
	public void setStick(int stick) {
		this.stick = stick;
	}
	public int getClickTimes() {
		return clickTimes;
	}
	public void setClickTimes(int clickTimes) {
		this.clickTimes = clickTimes;
	}
	@Override
	public String toString() {
		return "topic [topicID=" + topicID + ", userID=" + userID
				+ ", schoolID=" + schoolID + ", topicTitle=" + topicTitle
				+ ", topicText=" + topicText + ", topicTime=" + topicTime
				+ ", stick=" + stick + ", clickTimes=" + clickTimes + "]";
	}
}
