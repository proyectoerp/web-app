package com.company.erp.persistence.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.data.repository.core.support.RepositoryFactorySupport;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.company.erp.persistence.domain.Formula;
import com.company.erp.persistence.repository.FormulaRepository;
import com.company.erp.persistence.repository.MaterialRepository;
import com.company.erp.spring.persistence.PersistenceJPAConfig;

@Repository
@Transactional(readOnly = true)
public class FormulaServiceImpl implements FormulaService{

	/*@PersistenceContext
	transient EntityManager em;
	
	RepositoryFactorySupport factory=  new JpaRepositoryFactory(em);
	
			
	
	FormulaRepository repo=factory.getRepository(FormulaRepository.class);*/
	
	@Override
	public List<String> findByCriteria(String material) {
		System.out.println("serivce");
		
		
		
		/*List<Formula> lista= formulaRepository.findAll();
		
		System.out.println("Este es el tamaño : " +lista.size());*/
		return null;
	}

}
