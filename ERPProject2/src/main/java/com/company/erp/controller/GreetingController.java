package com.company.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.erp.persistence.repository.FormulaRepository;
import com.company.erp.persistence.service.FormulaService;

@Controller
public class GreetingController {

	@Autowired
	FormulaService formulaService;
	
    @RequestMapping("/greeting")
    public String greeting(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        //model.addAttribute("name", name);
        
        
        formulaService.findByCriteria("hola");
        
        model.addAttribute("name", name);
        
        return "greeting";
    }

}
