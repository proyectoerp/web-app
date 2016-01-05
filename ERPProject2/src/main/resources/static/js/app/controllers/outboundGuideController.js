app.controller('outboundGuideController', function($scope, outboundGuideFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.outboundGuide = {};
	$scope.outboundGuides = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.outboundGuides);
		outboundGuideFactory.getOutboundGuides($scope.outboundGuides, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.outboundGuides.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.outboundGuides.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.guiaId !== 'undefined') {
				var filterArr = $filter('filter')($scope.outboundGuides, { id: $stateParams.guiaId });
				$scope.outboundGuide = filterArr[0];
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
	
	$scope.searchOutboundGuides = function() {
		var outboundGuide = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.outboundGuides = outboundGuideFactory.searchOutboundGuides(outboundGuide);
	};
	
	$scope.addOutboundGuide = function() {
		var outboundGuide = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.outboundGuides.push(outboundGuide);
	};
});