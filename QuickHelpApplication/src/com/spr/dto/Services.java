package com.spr.dto;

public class Services {
	private  String serviceName;
	private String serviceDiscription;
	private String contact;
	private String address;
	private String city;
	private double latitude;
	private double longitude;
	private String vendorServiceType;
	
	
	
	public String getVendorServiceType() {
		return vendorServiceType;
	}
	public void setVendorServiceType(String vendorServiceType) {
		this.vendorServiceType = vendorServiceType;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getServiceDiscription() {
		return serviceDiscription;
	}
	public void setServiceDiscription(String serviceDiscription) {
		this.serviceDiscription = serviceDiscription;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public Services(String serviceName, String serviceDiscription, String contact, String address, String city,
			double latitude, double longitude) {
		super();
		this.serviceName = serviceName;
		this.serviceDiscription = serviceDiscription;
		this.contact = contact;
		this.address = address;
		this.city = city;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	public Services() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Services [serviceName=" + serviceName + ", serviceDiscription=" + serviceDiscription + ", contact="
				+ contact + ", address=" + address + ", city=" + city + ", latitude=" + latitude + ", longitude="
				+ longitude + "]";
	}
	
}
