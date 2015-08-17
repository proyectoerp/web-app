app.controller('workCentersController', function($scope, workCentersFactory, ngTableParams){
	init();
	
	function init() {
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