package com.company.erp.persistence.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.company.erp.persistence.domain.Material;

@RepositoryRestResource(collectionResourceRel = "material", path = "material")
public interface MaterialRepository extends JpaRepository<Material, Long>{
	
//	public List<String> findByDescription(String description);
	//public List<String> findByText(String material);
	
}
