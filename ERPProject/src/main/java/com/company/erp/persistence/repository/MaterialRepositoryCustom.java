package com.company.erp.persistence.repository;

import java.util.List;

import com.company.erp.persistence.domain.Material;

public interface MaterialRepositoryCustom {
	public List<Material> getMaterial(Material material);
}
