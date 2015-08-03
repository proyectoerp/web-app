var app = angular.module('erpApp', ['ngTable', 'ngRoute']);

app.config(function($routeProvider, $locationProvider) {
	$routeProvider.
	when(
		'/', 
		{
			controller: 'materialsController',
			templateUrl: 'partials/gestionMateriales'
		}
	).
	when(
		'/gestionMateriales', 
		{
			controller: 'materialsController',
			templateUrl: 'partials/gestionMateriales'
		}
	).
	when(
		'/guiaEntrada', 
		{
			controller: 'materialsController',
			templateUrl: 'partials/guiaEntrada'
		}
	).
	when(
		'/listaMateriales', 
		{
			controller: 'materialsController',
			templateUrl: 'partials/listaMateriales'
		}
	).
	when(
		'/centroTrabajo', 
		{
			controller: 'materialsController',
			templateUrl: 'partials/centroTrabajo'
		}
	).
	when(
		'/rutaFabricacion', 
		{
			controller: 'materialsController',
			templateUrl: 'partials/rutaFabricacion'
		}
	).
	when(
		'/planificadorNecesidades', 
		{
			controller: 'materialsController',
			templateUrl: 'partials/planificadorNecesidades'
		}
	).otherwise({redirectTo: '/'});
});