package com.company.erp.persistence.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import com.company.erp.persistence.domain.Material;


public class MaterialRepositoryImpl implements MaterialRepositoryCustom{

	@PersistenceContext
	transient EntityManager em;
	
	@Override
	public List<Material> getMaterial(Material material) {
		
		StringBuilder where =new StringBuilder();
		
		String from=" where ";
		
		
		if(!material.getCodigo().equals("")){
			
			where.append("LOWER(m.codigo) = '").append(material.getCodigo().toLowerCase()).append("' ");
		}
		
		if(!material.getDescripcion().equals("")){

			if(where.length()!=0)
			{
				where.append(" and ");
			}
			
			where.append("LOWER(m.descripcion) = '").append(material.getDescripcion().toLowerCase()).append("' ");
			
			
		}
		
		if(!material.getFamilia().equals("")){

			if(where.length()!=0)
			{
				where.append(" and ");
			}
			
			where.append("LOWER(m.familia) = '").append(material.getFamilia().toLowerCase()).append("' ");
			
		}
		
		
		
		
		if(where.length()==0){
			from="";
		}
		
		 where.insert(0, "select m from material m "+from);
		
		 TypedQuery<Material> q = em.createQuery(where.toString(),Material.class);
	
		
		return q.getResultList();
		
	}

	
}
