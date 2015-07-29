package com.company.erp.persistence.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class MaterialRepositoryImpl implements MaterialRepository{

	@Override
	public List<String> findByCriteria(String material) {
		// TODO Auto-generated method stub
		System.out.println("repository");
		
		return null;
	}

	
}
