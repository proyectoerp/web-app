package com.company.erp.persistence.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.company.erp.persistence.domain.Formula;

public interface FormulaRepository extends JpaRepository<Formula, Long>, JpaSpecificationExecutor<Formula> {
	
	
}
