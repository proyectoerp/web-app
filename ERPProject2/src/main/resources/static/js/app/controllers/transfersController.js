app.controller('transfersController', function($scope, transfersFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.transfer = {};
	$scope.transfers = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.transfers);
		transfersFactory.getTransfers($scope.transfers, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,
		        count: 5
		    }, {
		        total: $scope.transfers.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.transfers.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.transferenciaId !== 'undefined') {
				var filterArr = $filter('filter')($scope.transfers, { id: $stateParams.transferenciaId });
				$scope.transfer = filterArr[0];
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
	
	$scope.searchTransfers = function() {
		var transfer = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.transfers = transfersFactory.searchTransfers(transfer);
	};
	
	$scope.addTransfer = function() {
		console.log('in addTransfer');		
		var transfer = {
			id: $scope.transfer.id,
			description: $scope.transfer.description, 
			transferType: $scope.transfer.transferType, 
			status: $scope.transfer.status,
		};		
		$scope.transfers.push(transfer);
		$scope.tableParams.reload();
		
		$location.path('transferencias');
	};
	
	$scope.editTransfer = function() {
		console.log('in editTransfer');
	}
	
});