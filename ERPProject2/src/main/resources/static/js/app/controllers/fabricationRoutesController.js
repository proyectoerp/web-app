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
		
		console.log("registro toggle");
		$('.btn-toggle').click(function() {
			console.log("en btn toggle");
		    $(this).find('.btn').toggleClass('active');  
		    
		    if ($(this).find('.btn-primary').size()>0) {
		    	console.log("en btn primary");
		    	$(this).find('.btn').toggleClass('btn-primary');
		    }
		    if ($(this).find('.btn-danger').size()>0) {
		    	$(this).find('.btn').toggleClass('btn-danger');
		    }
		    if ($(this).find('.btn-success').size()>0) {
		    	$(this).find('.btn').toggleClass('btn-success');
		    }
		    if ($(this).find('.btn-info').size()>0) {
		    	$(this).find('.btn').toggleClass('btn-info');
		    }
		    
		    $(this).find('.btn').toggleClass('btn-default');
		    console.log("en btn default");
		       
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