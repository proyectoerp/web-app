app.controller('providerController', function($scope, providerFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.provider = {};
	$scope.providers = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.providers);
		providerFactory.getProviders($scope.providers, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.providers.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.providers.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.guiaId !== 'undefined') {
				var filterArr = $filter('filter')($scope.providers, { id: $stateParams.guiaId });
				$scope.provider = filterArr[0];
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
	
	$scope.searchProviders = function() {
		var provider = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.providers = providerFactory.searchProviders(provider);
	};
	
	$scope.addProvider = function() {
		var provider = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.providers.push(provider);
	};
});