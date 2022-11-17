package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.entity.TouristMaster;

public interface TouristRepository extends JpaRepository<TouristMaster,Integer>{
	
	@Query(value="select t.tourist_id from tourist_master t order by t.tourist_id desc fetch first 1 row only",nativeQuery=true)
	public int findLastId();

}
