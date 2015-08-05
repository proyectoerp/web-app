package com.company.erp.persistence.repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import com.company.erp.persistence.domain.Formula;
import com.company.erp.util.SearchCriteria;

public class FormulaSpecification implements Specification<Formula> {
	
	private SearchCriteria criteria;
	
	public FormulaSpecification(SearchCriteria param) {
		this.criteria=param;
	}

	@Override
	public Predicate toPredicate(Root<Formula> root, CriteriaQuery<?> query, CriteriaBuilder builder) {
		
		 if (criteria.getOperation().equalsIgnoreCase(">")) {
	            return builder.greaterThanOrEqualTo(
	              root.<String> get(criteria.getKey()), criteria.getValue().toString());
	        } 
	        else if (criteria.getOperation().equalsIgnoreCase("<")) {
	            return builder.lessThanOrEqualTo(
	              root.<String> get(criteria.getKey()), criteria.getValue().toString());
	        } 
	        else if (criteria.getOperation().equalsIgnoreCase(":")) {
	            if (root.get(criteria.getKey()).getJavaType() == String.class) {
	                return builder.like(
	                  root.<String>get(criteria.getKey()), "%" + criteria.getValue() + "%");
	            } else {
	                return builder.equal(root.get(criteria.getKey()), criteria.getValue());
	            }
	        }
	        return null;
	}

}
