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
	.state('guiaEntrada', {
		url:'/guiaEntrada',
		controller: 'materialsController',
		templateUrl: 'partials/guiaEntrada'
	})
	.state('agregarGuiaEntrada', {
		url:'/guiaEntrada',
		controller: 'materialsController',
		templateUrl: 'partials/agregarEditarGuiaEntrada'
	})
	.state('editarguiaEntrada', {
		url:'/guiaEntrada',
		controller: 'materialsController',
		templateUrl: 'partials/agregarEditarGuiaEntrada'
	})
	.state('listaMateriales', {
		url:'/listaMateriales',
		controller: 'materialsController',
		templateUrl: 'partials/listaMateriales'
	})
	.state('centroTrabajo', {
		url:'/centroTrabajo',
		controller: 'workCentersController',
		templateUrl: 'partials/centroTrabajo'
	})
	.state('rutaFabricacion', {
		url:'/rutaFabricacion',
		controller: 'fabricationRoutesController',
		templateUrl: 'partials/rutaFabricacion'
	})
	.state('planificadorNecesidades', {
		url:'/planificadorNecesidades',
		controller: 'necesityPlannerController',
		templateUrl: 'partials/planificadorNecesidades'
	});
	
}]);