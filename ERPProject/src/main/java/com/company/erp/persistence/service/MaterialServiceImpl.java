package com.company.erp.persistence.service;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.company.erp.persistence.domain.Material;
import com.company.erp.persistence.repository.MaterialRepository;



/**
 * Material access data methods implementation
 * @author bpari-as
 *
 */
@Service
@Transactional(readOnly = true)
public class MaterialServiceImpl implements MaterialService {
	
	/*@Autowired
	MaterialRepository materialRepository;
	*/


	@Override
	public List<Material> findByCriteria(Material material)
	{
		// TODO Auto-generated method stub
		return null; //materialRepository.getMaterial(material);
	}
	



}
