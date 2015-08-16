package com.company.erp.persistence.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;

import com.company.erp.persistence.domain.Formula;
import com.company.erp.util.SearchCriteria;

public class FormulaSpecificationsBuilder {
     
    private final List<SearchCriteria> params;
 
    public FormulaSpecificationsBuilder() {
        params = new ArrayList<SearchCriteria>();
    }
 
/*    public FormulaSpecificationsBuilder with(String key, String operation, Object value) {
        params.add(new SearchCriteria(key, operation, value));
        return builder;
    }*/
 
    public void with(String key, String operation, Object value) {
        params.add(new SearchCriteria(key, operation, value));
        
    }

    
    public Specification<Formula> build() {
        if (params.size() == 0) {
            return null;
        }
 
        List<Specification<Formula>> specs = new ArrayList<Specification<Formula>>();
        for (SearchCriteria param : params) {
            specs.add(new FormulaSpecification(param));
        }
 
        Specification<Formula> result = specs.get(0);
        for (int i = 1; i < specs.size(); i++) {
            result = Specifications.where(result).and(specs.get(i));
        }
        return result;
    }
}