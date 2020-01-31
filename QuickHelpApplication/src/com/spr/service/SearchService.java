package com.spr.service;

import java.util.List;

import com.spr.dto.Search;
import com.spr.dto.Services;

public interface SearchService {
	public List<Services> searchServices(Search search);
}
