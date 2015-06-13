package edu.nku.tfg.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable {
	private int userID;
	private int cityID;
	private int identityID;
	private int schoolID;
	private String userName;
	private String userEmail;
	private String userPassword;
	private String userText;
	private int userRank;
	private String userPic;
	public User(int userID, int cityID, int identityID, int schoolID,
			String userName, String userEmail, String userPassword,
			String userText, int userRank, String userPic) {
		super();
		this.userID = userID;
		this.cityID = cityID;
		this.identityID = identityID;
		this.schoolID = schoolID;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userText = userText;
		this.userRank = userRank;
		this.userPic = userPic;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [userID=" + userID + ", cityID=" + cityID
				+ ", identityID=" + identityID + ", schoolID=" + schoolID
				+ ", userName=" + userName + ", userEmail=" + userEmail
				+ ", userPassword=" + userPassword + ", userText=" + userText
				+ ", userRank=" + userRank + ", userPic=" + userPic + "]";
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getCityID() {
		return cityID;
	}
	public void setCityID(int cityID) {
		this.cityID = cityID;
	}
	public int getIdentityID() {
		return identityID;
	}
	public void setIdentityID(int identityID) {
		this.identityID = identityID;
	}
	public int getSchoolID() {
		return schoolID;
	}
	public void setSchoolID(int schoolID) {
		this.schoolID = schoolID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserText() {
		return userText;
	}
	public void setUserText(String userText) {
		this.userText = userText;
	}
	public int getUserRank() {
		return userRank;
	}
	public void setUserRank(int userRank) {
		this.userRank = userRank;
	}
	public String getUserPic() {
		return userPic;
	}
	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
}
