app.controller('solpedController', function($scope, solpedFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.solped = {};
	$scope.solpeds = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.solpeds);
		solpedFactory.getSolpeds($scope.solpeds, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.solpeds.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.solpeds.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.solpedId !== 'undefined') {
				var filterArr = $filter('filter')($scope.solpeds, { id: $stateParams.solpedId });
				$scope.solped = filterArr[0];
				return;
			}			
		});
		
		
		
		$('.dropdown-menu li a').on('click', function(e) {
			e.preventDefault();
			var ul = $(this).closest('ul');
			var buttonId = ul.attr('aria-labelledby');
			var button = $('#' + buttonId);
			button.find('.txt-drp').text($(this).html());
		});
		
		$('.datetimepicker').datetimepicker();
	}
	
	$scope.searchSolpeds = function() {
		var solped = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.solpeds = solpedFactory.searchSolpeds(solped);
	};
	
	$scope.addSolped = function() {
		var solped = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.solpeds.push(solped);
	};
});