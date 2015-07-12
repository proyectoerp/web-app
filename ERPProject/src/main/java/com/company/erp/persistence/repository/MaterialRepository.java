package com.company.erp.persistence.repository;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.company.erp.persistence.domain.Material;

@Repository
public interface MaterialRepository extends JpaRepository<Material, Long>, MaterialRepositoryCustom{
	
	@Override
	List<Material> findAll();
	
}
