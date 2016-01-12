app.controller('saleOrderController', function($scope, saleOrderFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.saleOrder = {};
	$scope.saleOrders = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.saleOrders);
		saleOrderFactory.getSaleOrders($scope.saleOrders, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.saleOrders.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.saleOrders.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.pedidoVentaId !== 'undefined') {
				var filterArr = $filter('filter')($scope.saleOrders, { id: $stateParams.pedidoVentaId });
				$scope.saleOrder = filterArr[0];
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
	
	$scope.searchSaleOrders = function() {
		var saleOrder = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.saleOrders = saleOrderFactory.searchSaleOrders(saleOrder);
	};
	
	$scope.addSaleOrder = function() {
		var saleOrder = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.saleOrders.push(saleOrder);
	};
});