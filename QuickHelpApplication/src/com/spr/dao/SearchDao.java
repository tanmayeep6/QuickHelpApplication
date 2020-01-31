package com.spr.dao;

import java.util.List;

import com.spr.dto.Search;
import com.spr.dto.Services;
import com.spr.dto.Vendor;

public interface SearchDao {

	List<Services> searchServices(Search search);
}
