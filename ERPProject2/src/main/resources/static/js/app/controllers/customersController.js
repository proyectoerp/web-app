app.controller('customersController', function($scope, customersFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.customer = {};
	$scope.customers = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.customers);
		customersFactory.getCustomers($scope.customers, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.customers.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.customers.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.clienteId !== 'undefined') {
				var filterArr = $filter('filter')($scope.customers, { id: $stateParams.clienteId });
				$scope.customer = filterArr[0];
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
	
	$scope.searchCustomers = function() {
		var customer = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.customers = customersFactory.searchCustomers(customer);
	};
	
	$scope.addCustomer = function() {
		var customer = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.customers.push(customer);
	};
});