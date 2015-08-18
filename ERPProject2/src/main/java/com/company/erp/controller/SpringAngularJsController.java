package com.company.erp.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.erp.persistence.service.FormulaService;





@Controller
@RequestMapping(value="/partials")
public class SpringAngularJsController {

	private static final Logger logger = LoggerFactory.getLogger(SpringAngularJsController.class);

	@Autowired
	FormulaService formulaService;
	
	@RequestMapping(value = "/gestionMateriales", method = RequestMethod.GET)
	public String displayMaterialsManagement(Locale locale, Model m) {
		logger.info("in MaterialsManagement.", locale);
		return "partials/gestionMateriales/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarMateriales", method = RequestMethod.GET)
	public String addEditMaterialsManagement(Locale locale, Model m) {
		logger.info("in addEditMaterialsManagement.", locale);
		return "partials/gestionMateriales/agregarEditar";
	}
	
	@RequestMapping(value = "/gestionCentros", method = RequestMethod.GET)
	public String displayCentersManagement(Locale locale, Model m) {
		logger.info("in displayCentersManagement.", locale);
		return "partials/gestionCentros/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarCentros", method = RequestMethod.GET)
	public String addEditCenters(Locale locale, Model m) {
		logger.info("in addEditCenters.", locale);
		return "partials/gestionCentros/agregarEditar";
	}
	
	@RequestMapping(value = "/guiaEntrada", method = RequestMethod.GET)
	public String displayInboundGuide(Locale locale, Model m) {
		logger.info("in displayInboundGuide.", locale);
		return "partials/guiaEntrada/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarGuiaEntrada", method = RequestMethod.GET)
	public String addEditInboundGuide(Locale locale, Model m) {
		logger.info("in addEditInboundGuide.", locale);
		return "partials/guiaEntrada/agregarEditar";
	}
	
	@RequestMapping(value = "/listaMateriales", method = RequestMethod.GET)
	public String displayMaterialsList(Locale locale, Model m) {
		logger.info("in displayMaterialsList.", locale);
		
		formulaService.findByCriteria("QUE tal");
		
		return "partials/listaMateriales";
	}
	
	@RequestMapping(value = "/centroTrabajo", method = RequestMethod.GET)
	public String displayWorkCenter(Locale locale, Model m) {
		logger.info("in displayWorkCenter.", locale);
		return "partials/centroTrabajo";
	}
	
	@RequestMapping(value = "/rutaFabricacion", method = RequestMethod.GET)
	public String displayFabricationRoute(Locale locale, Model m) {
		logger.info("in displayFabricationRoute.", locale);
		return "partials/rutaFabricacion";
	}
	
	@RequestMapping(value = "/planificadorNecesidades", method = RequestMethod.GET)
	public String displayNecesityPlanner(Locale locale, Model m) {
		logger.info("in displayNecesityPlanner.", locale);
		return "partials/planificadorNecesidades";
	}
}