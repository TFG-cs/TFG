package edu.nku.tfg.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class School implements Serializable {

	private int schoolID;
	private int cityID;
	private String schoolName;
	private String schoolMotto;
	private String schoolText;
	private int signNum;
	private String schoolBadge;
	private String topic;
	public School() {
		super();
		// TODO Auto-generated constructor stub
	}
	public School(int schoolID, int cityID, String schoolName,
			String schoolMotto, String schoolText, int signNum,
			String schoolBadge, String topic) {
		super();
		this.schoolID = schoolID;
		this.cityID = cityID;
		this.schoolName = schoolName;
		this.schoolMotto = schoolMotto;
		this.schoolText = schoolText;
		this.signNum = signNum;
		this.schoolBadge = schoolBadge;
		this.topic = topic;
	}
	public int getSchoolID() {
		return schoolID;
	}
	public void setSchoolID(int schoolID) {
		this.schoolID = schoolID;
	}
	public int getCityID() {
		return cityID;
	}
	public void setCityID(int cityID) {
		this.cityID = cityID;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getSchoolMotto() {
		return schoolMotto;
	}
	public void setSchoolMotto(String schoolMotto) {
		this.schoolMotto = schoolMotto;
	}
	public String getSchoolText() {
		return schoolText;
	}
	public void setSchoolText(String schoolText) {
		this.schoolText = schoolText;
	}
	public int getSignNum() {
		return signNum;
	}
	public void setSignNum(int signNum) {
		this.signNum = signNum;
	}
	public String getSchoolBadge() {
		return schoolBadge;
	}
	public void setSchoolBadge(String schoolBadge) {
		this.schoolBadge = schoolBadge;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	@Override
	public String toString() {
		return "school [schoolID=" + schoolID + ", cityID=" + cityID
				+ ", schoolName=" + schoolName + ", schoolMotto=" + schoolMotto
				+ ", schoolText=" + schoolText + ", signNum=" + signNum
				+ ", schoolBadge=" + schoolBadge + ", topic=" + topic + "]";
	}
}
