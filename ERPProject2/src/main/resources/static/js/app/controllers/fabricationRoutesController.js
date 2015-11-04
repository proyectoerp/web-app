app.controller('fabricationRoutesController', function($scope, fabricationRoutesFactory, ngTableParams){
	$scope.fabricationRoutes = [];
	
	init();
	
	function init() {
		$scope.fabricationRoutes = fabricationRoutesFactory.getFabricationRoutes();
		
		$scope.tableParams = new ngTableParams({
	        page: 1,            // show first page
	        count: 5           // count per page
	    }, {
	        total: $scope.fabricationRoutes.length, // length of data
	        counts: [],
	        getData: function ($defer, params) {
	            $defer.resolve($scope.fabricationRoutes.slice((params.page() - 1) * params.count(), params.page() * params.count()));
	        }
	    });
		
	}
	
	$scope.saveFabricationRoute = function() {
		var fabricationRoute = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		fabricationRoutesFactory.saveFabricationRoute(fabricationRoute);
	};
	
	$scope.addFabricationRoute = function() {
		var fabricationRoute = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.fabricationRoutes.push(fabricationRoute);
	};
});