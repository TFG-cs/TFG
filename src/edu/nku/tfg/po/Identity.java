package edu.nku.tfg.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Identity implements Serializable {
	
	private int identityID;
	private String identityName;
	public Identity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Identity(int identityID, String identityName) {
		super();
		this.identityID = identityID;
		this.identityName = identityName;
	}
	public int getIdentityID() {
		return identityID;
	}
	public void setIdentityID(int identityID) {
		this.identityID = identityID;
	}
	public String getIdentityName() {
		return identityName;
	}
	public void setIdentityName(String identityName) {
		this.identityName = identityName;
	}
	@Override
	public String toString() {
		return "identity [identityID=" + identityID + ", identityName="
				+ identityName + "]";
	}
}
