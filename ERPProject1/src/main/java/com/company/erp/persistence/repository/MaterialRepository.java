package com.company.erp.persistence.repository;

import java.util.List;

public interface MaterialRepository {
	
	
	public List<String> findByCriteria(String material);
	
}
