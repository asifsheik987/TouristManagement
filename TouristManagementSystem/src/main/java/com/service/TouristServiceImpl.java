package com.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.TouristContact;
import com.entity.TouristMaster;
import com.repository.TouristRepository;

@Service("service")
public class TouristServiceImpl implements TouristService{
	private TouristRepository touristRepo;

	@Autowired
	public TouristServiceImpl(TouristRepository touristRepo) {
		this.touristRepo = touristRepo;

	}
    @Override
	public void addData(TouristMaster tourist) {
		touristRepo.save(tourist);
	}
    @Override
	public Optional<TouristMaster> display(Integer id) {
		return touristRepo.findById(id);
	}
    @Override
	public Integer findLatestId() {
    	Integer id;
		if(touristRepo.findLastId()==null) {
			id=1;
		}
		else {
			id=touristRepo.findLastId()+1;
		}
		return id;
		
	}

}
