package com.spr.dto;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

public class Vendor {

	@NotNull(message="required")
	private Date date;
	@NotNull(message="required")
	private String vFirstName;
	@NotNull(message="required")
	private String vLastName;
	@NotNull(message="required")
	private String vgender;
	 @Size(min=0,max=10)
	@NotNull(message="required")
	private long vcontactNo;
	@NotNull(message="required")
	@Email
	private String vemail;
	@NotNull(message="required")
	private String password;
	@NotNull(message="required")
	private String area;
	@NotNull(message="required")
	private String occupation;
	
	
	
	
	public Vendor(Date date, String vFirstName, String vLastName, String vgender, long vcontactNo, String vemail,
			String password, String area, String occupation) {
		super();
		this.date = date;
		this.vFirstName = vFirstName;
		this.vLastName = vLastName;
		this.vgender = vgender;
		this.vcontactNo = vcontactNo;
		this.vemail = vemail;
		this.password = password;
		this.area = area;
		this.occupation = occupation;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getvFirstName() {
		return vFirstName;
	}
	public void setvFirstName(String vFirstName) {
		this.vFirstName = vFirstName;
	}
	public String getvLastName() {
		return vLastName;
	}
	public void setvLastName(String vLastName) {
		this.vLastName = vLastName;
	}
	public String getVgender() {
		return vgender;
	}
	public void setVgender(String vgender) {
		this.vgender = vgender;
	}
	public long getVcontactNo() {
		return vcontactNo;
	}
	public void setVcontactNo(long vcontactNo) {
		this.vcontactNo = vcontactNo;
	}
	public String getVemail() {
		return vemail;
	}
	public void setVemail(String vemail) {
		this.vemail = vemail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	@Override
	public String toString() {
		return "Vendor [date=" + date + ", vFirstName=" + vFirstName + ", vLastName=" + vLastName + ", vgender="
				+ vgender + ", vcontactNo=" + vcontactNo + ", vemail=" + vemail + ", password=" + password + ", area="
				+ area + ", occupation=" + occupation + "]";
	}
	public Vendor() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
		
}
