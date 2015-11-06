app.controller('centersController', function($scope, centersFactory, ngTableParams, $filter, $stateParams){
	$scope.center = {};
	$scope.centers = [];
	
	init();
	
	function init() {
		centersFactory.getCenters($scope.centers, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,
		        count: 5
		    }, {
		        total: $scope.centers.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.centers.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.centroId !== 'undefined') {
				var filterArr = $filter('filter')($scope.centers, { id: $stateParams.centroId });
				$scope.center = filterArr[0];
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
	
	$scope.searchCenters = function() {
		var center = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.centers = centersFactory.searchCenters(center);
	};
	
	$scope.addCenter = function() {
		var center = {
			id: $scope.id,
			description: $scope.description, 
			centerType: $scope.centerType, 
			status: $scope.status,
		};
		$scope.centers.push($scope.center);
	};
	
	$scope.editCenter = function() {
		console.log('in editCenter');
	}
	
});