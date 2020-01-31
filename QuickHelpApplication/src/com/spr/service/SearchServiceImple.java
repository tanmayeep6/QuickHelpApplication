package com.spr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spr.dao.SearchDao;
import com.spr.dto.Search;
import com.spr.dto.Services;
import com.spr.dto.Vendor;

@Service
public class SearchServiceImple implements SearchService {
	@Autowired
	private SearchDao searchDao;
	@Override
	public List<Services> searchServices(Search search) {
		
		return searchDao.searchServices(search);
	}
}
