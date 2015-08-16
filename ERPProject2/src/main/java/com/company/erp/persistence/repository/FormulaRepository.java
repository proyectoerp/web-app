package com.company.erp.persistence.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.company.erp.persistence.domain.Formula;

@RepositoryRestResource(collectionResourceRel = "formula", path = "formula")
public interface FormulaRepository extends JpaRepository<Formula, Long>, JpaSpecificationExecutor<Formula> {
	
	
}
