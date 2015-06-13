package edu.nku.tfg.po;

import java.io.Serializable;

@SuppressWarnings("serial")
public class City implements Serializable {
	
	private int cityID;
	private String cityName;
	
	public City() {
		super();
		// TODO Auto-generated constructor stub
	}
	public City(int cityID, String cityName) {
		super();
		this.cityID = cityID;
		this.cityName = cityName;
	}
	public int getCityID() {
		return cityID;
	}
	public void setCityID(int cityID) {
		this.cityID = cityID;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	@Override
	public String toString() {
		return "city [cityID=" + cityID + ", cityName=" + cityName + "]";
	}
}
