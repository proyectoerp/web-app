app.controller('workCentersController', function($scope, workCentersFactory, ngTableParams){
	$scope.workCenters = [];
	
	init();
	
	function init() {
		$scope.workCenters = workCentersFactory.getWorkCenters();
		
		$scope.tableParams = new ngTableParams({
	        page: 1,            // show first page
	        count: 5           // count per page
	    }, {
	        total: $scope.workCenters.length, // length of data
	        counts: [],
	        getData: function ($defer, params) {
	            $defer.resolve($scope.workCenters.slice((params.page() - 1) * params.count(), params.page() * params.count()));
	        }
	    });
		
		
		$('.dropdown-menu li a').on('click', function(e) {
			e.preventDefault();
			var ul = $(this).closest('ul');
			var buttonId = ul.attr('aria-labelledby');
			var button = $('#' + buttonId);
			button.find('.txt-drp').text($(this).html());
		});
	}
	
	$scope.saveWorkCenter = function() {
		var workCenter = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		workCentersFactory.saveWorkCenter(workCenter);
	};
});