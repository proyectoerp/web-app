app.controller('materialsController', function($scope, materialsFactory, ngTableParams){
	$scope.materials = [];
	
	init();
	
	function init() {
		$scope.materials = materialsFactory.getMaterials();
		
		$scope.tableParams = new ngTableParams({
	        page: 1,            // show first page
	        count: 5           // count per page
	    }, {
	        total: $scope.materials.length, // length of data
	        getData: function ($defer, params) {
	            $defer.resolve($scope.materials.slice((params.page() - 1) * params.count(), params.page() * params.count()));
	        }
	    });
	}
});