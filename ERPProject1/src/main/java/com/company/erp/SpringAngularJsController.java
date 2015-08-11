package com.company.erp;

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
	
	@RequestMapping(value = "/guiaEntrada", method = RequestMethod.GET)
	public String displayInboundGuide(Locale locale, Model m) {
		logger.info("in displayInboundGuide.", locale);
		return "partials/guiaEntrada";
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
