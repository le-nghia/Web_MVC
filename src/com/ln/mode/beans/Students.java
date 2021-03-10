package com.ln.mode.beans;

public class Students {
	private String ID;
	private String Name;
	private String Gender;
	private String Birthday;
	private String Address;
	
	public Students() {
		
	}
	public Students(String ID,String Name,String Gender,String Birthday,String Address) {
		super();
		this.ID = ID;
		this.Name = Name;
		this.Gender = Gender;
		this.Birthday = Birthday;
		this.Address = Address;
		
	}
	/**
	 * @return the iD
	 */
	public String getID() {
		return ID;
	}
	/**
	 * @param iD the iD to set
	 */
	public void setID(String iD) {
		this.ID = iD;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return Name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.Name = name;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return Gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.Gender = gender;
	}
	/**
	 * @return the birthday
	 */
	public String getBirthday() {
		return Birthday;
	}
	/**
	 * @param birthday the birthday to set
	 */
	public void setBirthday(String birthday) {
		this.Birthday = birthday;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return Address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.Address = address;
	}
	
	
}
