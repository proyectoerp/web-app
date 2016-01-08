app.controller('wastesController', function($scope, wastesFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.waste = {};
	$scope.wastes = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.wastes);
		wastesFactory.getWastes($scope.wastes, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,
		        count: 5
		    }, {
		        total: $scope.wastes.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.wastes.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.mermaId !== 'undefined') {
				var filterArr = $filter('filter')($scope.wastes, { id: $stateParams.mermaId });
				$scope.waste = filterArr[0];
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
	
	$scope.searchWastes = function() {
		var waste = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.wastes = wastesFactory.searchWastes(waste);
	};
	
	$scope.addWaste = function() {
		console.log('in addWaste');		
		var waste = {
			id: $scope.waste.id,
			description: $scope.waste.description, 
			wasteType: $scope.waste.wasteType, 
			status: $scope.waste.status,
		};		
		$scope.wastes.push(waste);
		$scope.tableParams.reload();
		
		$location.path('mermas');
	};
	
	$scope.editWaste = function() {
		console.log('in editWaste');
	}
	
});