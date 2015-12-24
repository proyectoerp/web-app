app.controller('fabricationRoutesController', function($scope, fabricationRoutesFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.fabricationRoute = {};
	$scope.fabricationRoutes = [];
	
	init();
	
	function init() {
		fabricationRoutesFactory.getFabricationRoutes($scope.fabricationRoutes, function(){
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
			if (typeof $stateParams.routeId !== 'undefined') {
				var filterArr = $filter('filter')($scope.fabricationRoutes, { id: $stateParams.routeId });
				$scope.fabricationRoute = filterArr[0];
				return;
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