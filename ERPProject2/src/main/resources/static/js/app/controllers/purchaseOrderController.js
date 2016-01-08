app.controller('purchaseOrderController', function($scope, purchaseOrderFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.purchaseOrder = {};
	$scope.purchaseOrders = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.purchaseOrders);
		purchaseOrderFactory.getPurchaseOrders($scope.purchaseOrders, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.purchaseOrders.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.purchaseOrders.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.ordenCompraId !== 'undefined') {
				var filterArr = $filter('filter')($scope.purchaseOrders, { id: $stateParams.ordenCompraId });
				$scope.purchaseOrder = filterArr[0];
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
	
	$scope.searchPurchaseOrders = function() {
		var purchaseOrder = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.purchaseOrders = purchaseOrderFactory.searchPurchaseOrders(purchaseOrder);
	};
	
	$scope.addPurchaseOrder = function() {
		var purchaseOrder = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.purchaseOrders.push(purchaseOrder);
	};
});