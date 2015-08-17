app.controller('inboundGuideController', function($scope, inboundGuideFactory, ngTableParams){
	$scope.inboundGuides = [];
	
	init();
	
	function init() {
		$scope.inboundGuides = inboundGuideFactory.getInboundGuides();
		
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