app.controller('inboundGuideController', function($scope, inboundGuideFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.inboundGuide = {};
	$scope.inboundGuides = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.inboundGuides);
		inboundGuideFactory.getInboundGuides($scope.inboundGuides, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.inboundGuides.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.inboundGuides.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.guiaId !== 'undefined') {
				var filterArr = $filter('filter')($scope.inboundGuides, { id: $stateParams.guiaId });
				$scope.inboundGuide = filterArr[0];
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
	
	$scope.searchInboundGuides = function() {
		var material = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.materials = inboundGuideFactory.searchInboundGuides(material);
	};
	
	$scope.addInboundGuide = function() {
		var material = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.inboundGuides.push(material);
	};
});