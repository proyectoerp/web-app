app.controller('necesityPlannerController', function($scope, necesityPlannerFactory, ngTableParams){
	$scope.necesityPlanner = [];
	
	init();
	
	function init() {
		$scope.necesityPlanner = necesityPlannerFactory.getNecesitiesPlanner();
		
		$scope.tableParams = new ngTableParams({
	        page: 1,            // show first page
	        count: 5           // count per page
	    }, {
	        total: $scope.necesityPlanner.length, // length of data
	        counts: [],
	        getData: function ($defer, params) {
	            $defer.resolve($scope.necesityPlanner.slice((params.page() - 1) * params.count(), params.page() * params.count()));
	        }
	    });
		
		$('.dropdown-menu li a').on('click', function(e) {
			e.preventDefault();
			var ul = $(this).closest('ul');
			var buttonId = ul.attr('aria-labelledby');
			var button = $('#' + buttonId);
			button.find('.txt-drp').text($(this).html());
		});
		
	}
	
	$scope.addInboundGuide = function() {
		var necesity = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.necesityPlanner.push(necesity);
	};
});