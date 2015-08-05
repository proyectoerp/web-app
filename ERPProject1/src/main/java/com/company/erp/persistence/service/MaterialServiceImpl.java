package com.company.erp.persistence.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.erp.persistence.repository.MaterialRepository;

@Service
public class MaterialServiceImpl implements MaterialService{

	@Autowired
	MaterialRepository materialRepository;
	
	@Override
	public List<String> findByCriteria(String material) {
		System.out.println("serivce");
		
		
		
		materialRepository.findByCriteria(material);
		
		return null;
	}

}
