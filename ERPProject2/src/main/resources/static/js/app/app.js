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
        url:'/agregarEditarMateriales',
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
	.state('guiaEntrada', {
		url:'/guiaEntrada',
		controller: 'materialsController',
		templateUrl: 'partials/guiaEntrada'
	})
	.state('agregarGuiaEntrada', {
		url:'/agregarGuiaEntrada',
		controller: 'materialsController',
		templateUrl: 'partials/agregarEditarGuiaEntrada'
	})
	.state('editarGuiaEntrada', {
		url:'/guiaEntrada',
		controller: 'materialsController',
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
		url:'/editarCentroTrabajo',
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
		url:'/editarRutaFabricacion',
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
	.state('familia', {
		url:'/familia',
		controller: 'familyController',
		templateUrl: 'partials/familia'
	});
	
	
}]);