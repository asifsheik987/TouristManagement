package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.entity.TouristMaster;

public interface TouristRepository extends JpaRepository<TouristMaster, Integer> {

	@Query(value = "select max(t.tourist_id) from tourist_master t", nativeQuery = true)
	public Integer findLastId();

}
