package com.spr.service;

import java.util.List;

import com.spr.dto.Services;
import com.spr.dto.Vendor;

public interface VendorService {

	public void insert(Vendor vendor);
	public List<Vendor> getAll();
	public Services showMap(int id);
}
