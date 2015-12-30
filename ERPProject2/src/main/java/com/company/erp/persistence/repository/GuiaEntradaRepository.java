package com.company.erp.persistence.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import com.company.erp.persistence.domain.GuiaEntrada;


@RepositoryRestResource(collectionResourceRel = "guiaEntrada", path = "guiaEntrada")
public interface GuiaEntradaRepository extends JpaRepository<GuiaEntrada, Long> {

}
