package com.company.erp.persistence.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.company.erp.persistence.domain.CentroTrabajo;


@RepositoryRestResource(collectionResourceRel = "centroTrabajo", path = "centroTrabajo")
public interface CentroTrabajoRepository extends JpaRepository<CentroTrabajo, Long> {
	
	
}
