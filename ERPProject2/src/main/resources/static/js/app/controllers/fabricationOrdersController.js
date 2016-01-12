app.controller('fabricationOrdersController', function($scope, fabricationOrdersFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.fabricationOrder = {};
	$scope.fabricationOrders = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.fabricationOrders);
		fabricationOrdersFactory.getFabricationOrders($scope.fabricationOrders, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,
		        count: 5
		    }, {
		        total: $scope.fabricationOrders.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.fabricationOrders.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.ordenFabricacionId !== 'undefined') {
				var filterArr = $filter('filter')($scope.fabricationOrders, { id: $stateParams.ordenFabricacionId });
				$scope.fabricationOrder = filterArr[0];
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
	
	$scope.searchFabricationOrders = function() {
		var fabricationOrder = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.fabricationOrders = fabricationOrdersFactory.searchFabricationOrders(fabricationOrder);
	};
	
	$scope.addFabricationOrder = function() {
		console.log('in addFabricationOrder');		
		var fabricationOrder = {
			id: $scope.fabricationOrder.id,
			description: $scope.fabricationOrder.description, 
			fabricationOrderType: $scope.fabricationOrder.fabricationOrderType, 
			status: $scope.fabricationOrder.status,
		};		
		$scope.fabricationOrders.push(fabricationOrder);
		$scope.tableParams.reload();
		
		$location.path('mermas');
	};
	
	$scope.editFabricationOrder = function() {
		console.log('in editFabricationOrder');
	}
	
});