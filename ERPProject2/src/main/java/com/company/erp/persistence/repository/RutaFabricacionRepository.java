package com.company.erp.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.company.erp.persistence.domain.RutaFabricacion;

@RepositoryRestResource(collectionResourceRel = "rutaFabricacion", path = "rutaFabricacion")
public interface RutaFabricacionRepository extends JpaRepository<RutaFabricacion, Long> {

}
