package com.service;

import java.util.Optional;

import com.entity.TouristMaster;

public interface TouristService {
	
	public void addData(TouristMaster tourist);
	
	public Optional<TouristMaster> display(Integer id);
	
	public Integer findLatestId();

}
