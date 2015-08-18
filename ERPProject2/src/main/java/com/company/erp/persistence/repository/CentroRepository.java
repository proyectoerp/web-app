package com.company.erp.persistence.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.company.erp.persistence.domain.Centro;


@RepositoryRestResource(collectionResourceRel = "centro", path = "centro")
public interface CentroRepository extends JpaRepository<Centro, Long> {
	
	
}
