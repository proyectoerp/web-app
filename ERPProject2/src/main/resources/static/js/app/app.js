var app = angular.module('erpApp', ['ngTable', 'ui.router']);

app.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
	$urlRouterProvider.otherwise('/');
	
	$stateProvider
    .state('home', {
        url:'/home',
        templateUrl: 'partials/gestionMateriales',
        controller: 'materialsController'
    })
    .state('gestionMateriales', {
        url:'/gestionMateriales',
        templateUrl: 'partials/gestionMateriales',
        controller: 'materialsController'
    })
    .state('agregarMateriales', {
        url:'/agregarEditarMateriales',
        templateUrl: 'partials/agregarEditarMateriales',
        controller: 'materialsController'
    })
    .state('editarMateriales', {
        url:'/agregarEditarMateriales/:materialId',
        templateUrl: 'partials/agregarEditarMateriales',
        controller: 'materialsController'
    })
    .state('gestionCentros', {
        url:'/gestionCentros',
        templateUrl: 'partials/gestionCentros',
        controller: 'centersController'
    })
    .state('agregarCentros', {
        url:'/agregarEditarCentros',
        templateUrl: 'partials/agregarEditarCentros',
        controller: 'centersController'
    })
    .state('editarCentros', {
        url:'/editarCentros/:centroId',
        templateUrl: 'partials/agregarEditarCentros',
        controller: 'centersController'
    })
    .state('gestionProveedor', {
        url:'/gestionProveedor',
        templateUrl: 'partials/gestionProveedor',
        controller: 'providerController'
    })
    .state('agregarProveedor', {
        url:'/agregarEditarProveedor',
        templateUrl: 'partials/agregarEditarProveedor',
        controller: 'providerController'
    })
    .state('editarProveedor', {
        url:'/editarProveedor/:proveedorId',
        templateUrl: 'partials/agregarEditarProveedor',
        controller: 'providerController'
    })
	.state('guiaEntrada', {
		url:'/guiaEntrada',
		controller: 'inboundGuideController',
		templateUrl: 'partials/guiaEntrada'
	})
	.state('agregarGuiaEntrada', {
		url:'/agregarGuiaEntrada',
		controller: 'inboundGuideController',
		templateUrl: 'partials/agregarEditarGuiaEntrada'
	})
	.state('editarGuiaEntrada', {
		url:'/editarGuiaEntrada/:guiaId',
		controller: 'inboundGuideController',
		templateUrl: 'partials/agregarEditarGuiaEntrada'
	})
	.state('listaMateriales', {
		url:'/listaMateriales',
		controller: 'materialsController',
		templateUrl: 'partials/listaMateriales'
	})
	.state('agregarListaMateriales', {
		url:'/agregarListaMateriales',
		controller: 'materialsController',
		templateUrl: 'partials/agregarEditarListaMateriales'
	})
	.state('editarListaMateriales', {
		url:'/editarListaMateriales',
		controller: 'materialsController',
		templateUrl: 'partials/agregarEditarListaMateriales'
	})
	.state('centroTrabajo', {
		url:'/centroTrabajo',
		controller: 'workCentersController',
		templateUrl: 'partials/centroTrabajo'
	})
	.state('agregarCentroTrabajo', {
		url:'/agregarCentroTrabajo',
		controller: 'workCentersController',
		templateUrl: 'partials/agregarEditarCentroTrabajo'
	})
	.state('editarCentroTrabajo', {
		url:'/editarCentroTrabajo/:centroTrabajoId', 
		controller: 'workCentersController',
		templateUrl: 'partials/agregarEditarCentroTrabajo'
	})
	.state('rutaFabricacion', {
		url:'/rutaFabricacion',
		controller: 'fabricationRoutesController',
		templateUrl: 'partials/rutaFabricacion'
	})
	.state('agregarRutaFabricacion', {
		url:'/agregarRutaFabricacion',
		controller: 'fabricationRoutesController',
		templateUrl: 'partials/agregarEditarRutaFabricacion'
	})
	.state('editarRutaFabricacion', {
		url:'/editarRutaFabricacion/:routeId',
		controller: 'fabricationRoutesController',
		templateUrl: 'partials/agregarEditarRutaFabricacion'
	})
	.state('planificadorNecesidades', {
		url:'/planificadorNecesidades',
		controller: 'necesityPlannerController',
		templateUrl: 'partials/planificadorNecesidades'
	})
	.state('agregarPlanificadorNecesidades', {
		url:'/agregarPlanificadorNecesidades',
		controller: 'necesityPlannerController',
		templateUrl: 'partials/agregarEditarPlanificadorNecesidades'
	})
	.state('agregarEditarPlanificadorNecesidades', {
		url:'/editarPlanificadorNecesidades',
		controller: 'necesityPlannerController',
		templateUrl: 'partials/agregarEditarPlanificadorNecesidades'
	})
	.state('gestionFamilia', {
		url:'/gestionFamilia',
		controller: 'familyController',
		templateUrl: 'partials/gestionFamilia'
	})
	.state('guiaSalida', {
		url:'/guiaSalida',
		controller: 'outboundGuideController',
		templateUrl: 'partials/guiaSalida'
	})
	.state('agregarGuiaSalida', {
		url:'/agregarGuiaSalida',
		controller: 'outboundGuideController',
		templateUrl: 'partials/agregarEditarGuiaSalida'
	})
	.state('editarGuiaSalida', {
		url:'/editarGuiaSalida/:guiaId',
		controller: 'outboundGuideController',
		templateUrl: 'partials/agregarEditarGuiaSalida'
	});
	
	
}]);