package edu.nku.tfg.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Information implements Serializable {

	private int inforID;
	private int userID;
	private String inforText;
	private String inforLink;
	private int ifRead;
	public Information() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Information(int inforID, int userID, String inforText,
			String inforLink, int ifRead) {
		super();
		this.inforID = inforID;
		this.userID = userID;
		this.inforText = inforText;
		this.inforLink = inforLink;
		this.ifRead = ifRead;
	}
	public int getInforID() {
		return inforID;
	}
	public void setInforID(int inforID) {
		this.inforID = inforID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getInforText() {
		return inforText;
	}
	public void setInforText(String inforText) {
		this.inforText = inforText;
	}
	public String getInforLink() {
		return inforLink;
	}
	public void setInforLink(String inforLink) {
		this.inforLink = inforLink;
	}
	public int getIfRead() {
		return ifRead;
	}
	public void setIfRead(int ifRead) {
		this.ifRead = ifRead;
	}
	@Override
	public String toString() {
		return "information [inforID=" + inforID + ", userID=" + userID
				+ ", inforText=" + inforText + ", inforLink=" + inforLink
				+ ", ifRead=" + ifRead + "]";
	}
}
