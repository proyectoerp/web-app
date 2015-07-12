package com.company.erp.persistence.service;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.company.erp.persistence.domain.Material;




/**
 * Material access data methods declaration
 * @author bpari-as
 *
 */

public interface MaterialService {

	public List<Material> findByCriteria(Material material);
	
	
}
