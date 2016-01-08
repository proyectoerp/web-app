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
	
	@RequestMapping(value = "/gestionClientes", method = RequestMethod.GET)
	public String displayCustomersManagement(Locale locale, Model m) {
		logger.info("in displayCustomersManagement.", locale);
		return "partials/gestionClientes/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarClientes", method = RequestMethod.GET)
	public String addEditCustomers(Locale locale, Model m) {
		logger.info("in addEditCustomers.", locale);
		return "partials/gestionClientes/agregarEditar";
	}
	
	@RequestMapping(value = "/gestionProveedor", method = RequestMethod.GET)
	public String displayProviderManagement(Locale locale, Model m) {
		logger.info("in displayProviderManagement.", locale);
		return "partials/gestionProveedor/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarProveedor", method = RequestMethod.GET)
	public String addEditProvider(Locale locale, Model m) {
		logger.info("in addEditProvider.", locale);
		return "partials/gestionProveedor/agregarEditar";
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
		
		return "partials/listaMateriales/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarListaMateriales", method = RequestMethod.GET)
	public String addEditMaterialsList(Locale locale, Model m) {
		logger.info("in addEditMaterialsList.", locale);
		return "partials/listaMateriales/agregarEditar";
	}
	
	@RequestMapping(value = "/centroTrabajo", method = RequestMethod.GET)
	public String displayWorkCenter(Locale locale, Model m) {
		logger.info("in displayWorkCenter.", locale);
		return "partials/centroTrabajo/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarCentroTrabajo", method = RequestMethod.GET)
	public String addEditWorkCenter(Locale locale, Model m) {
		logger.info("in addEditWorkCenter.", locale);
		return "partials/centroTrabajo/agregarEditar";
	}
	
	@RequestMapping(value = "/rutaFabricacion", method = RequestMethod.GET)
	public String displayFabricationRoute(Locale locale, Model m) {
		logger.info("in displayFabricationRoute.", locale);
		return "partials/rutaFabricacion/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarRutaFabricacion", method = RequestMethod.GET)
	public String addEditFabricationRoute(Locale locale, Model m) {
		logger.info("in addEditFabricationRoute.", locale);
		return "partials/rutaFabricacion/agregarEditar";
	}
	
	@RequestMapping(value = "/planificadorNecesidades", method = RequestMethod.GET)
	public String displayNecesityPlanner(Locale locale, Model m) {
		logger.info("in displayNecesityPlanner.", locale);
		return "partials/planificadorNecesidades/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarPlanificadorNecesidades", method = RequestMethod.GET)
	public String addEditNecesityPlanner(Locale locale, Model m) {
		logger.info("in addEditNecesityPlanner.", locale);
		return "partials/planificadorNecesidades/agregarEditar";
	}
	
	@RequestMapping(value = "/gestionFamilia", method = RequestMethod.GET)
	public String displayFamily(Locale locale, Model m) {
		logger.info("in displayFamily.", locale);
		return "partials/familia/buscar";
	}
	
	@RequestMapping(value = "/guiaSalida", method = RequestMethod.GET)
	public String displayOutboundGuide(Locale locale, Model m) {
		logger.info("in displayOutboundGuide.", locale);
		return "partials/guiaSalida/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarGuiaSalida", method = RequestMethod.GET)
	public String addEditOutboundGuide(Locale locale, Model m) {
		logger.info("in addEditOutboundGuide.", locale);
		return "partials/guiaSalida/agregarEditar";
	}
	
	@RequestMapping(value = "/transferencias", method = RequestMethod.GET)
	public String displayTransfers(Locale locale, Model m) {
		logger.info("in displayTransfers.", locale);
		return "partials/transferencias/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarTransferencias", method = RequestMethod.GET)
	public String addEditTransfers(Locale locale, Model m) {
		logger.info("in addEditTransfers.", locale);
		return "partials/transferencias/agregarEditar";
	}
	
	@RequestMapping(value = "/mermas", method = RequestMethod.GET)
	public String displayWastes(Locale locale, Model m) {
		logger.info("in displayWastes.", locale);
		return "partials/mermas/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarMermas", method = RequestMethod.GET)
	public String addEditWastes(Locale locale, Model m) {
		logger.info("in addEditWastes.", locale);
		return "partials/mermas/agregarEditar";
	}
	
	@RequestMapping(value = "/ordenCompra", method = RequestMethod.GET)
	public String displayPurchaseOrder(Locale locale, Model m) {
		logger.info("in displayPurchaseOrder.", locale);
		return "partials/ordenCompra/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarOrdenCompra", method = RequestMethod.GET)
	public String addEditPurchaseOrder(Locale locale, Model m) {
		logger.info("in addEditPurchaseOrder.", locale);
		return "partials/ordenCompra/agregarEditar";
	}
	
	@RequestMapping(value = "/solicitudPedido", method = RequestMethod.GET)
	public String displaySolped(Locale locale, Model m) {
		logger.info("in displaySolped.", locale);
		return "partials/solicitudPedido/buscar";
	}
	
	@RequestMapping(value = "/agregarEditarSolicitudPedido", method = RequestMethod.GET)
	public String addEditSolped(Locale locale, Model m) {
		logger.info("in addEditSolped.", locale);
		return "partials/solicitudPedido/agregarEditar";
	}
}
