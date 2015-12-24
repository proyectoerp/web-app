app.controller('materialsController', function($scope, materialsFactory, ngTableParams, $filter, $stateParams, $location){
	$scope.material = {};
	$scope.materials = [];
	
	init();
	
	function init() {
		console.log('in init ' + $scope.materials);
		materialsFactory.getMaterials($scope.materials, function(){
			$scope.tableParams = new ngTableParams({
		        page: 1,            // show first page
		        count: 5           // count per page
		    }, {
		        total: $scope.materials.length, // length of data
		        counts: [],
		        getData: function ($defer, params) {
		            $defer.resolve($scope.materials.slice((params.page() - 1) * params.count(), params.page() * params.count()));
		        }
		    });
			if (typeof $stateParams.materialId !== 'undefined') {
				var filterArr = $filter('filter')($scope.materials, { id: $stateParams.materialId });
				$scope.material = filterArr[0];
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
	
	$scope.searchMaterials = function() {
		var material = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.materials = materialsFactory.searchMaterials(material);
	};
	
	$scope.addMaterial = function() {
		var material = {
			id: $scope.id,
			name: $scope.name, 
			description: $scope.description, 
			unitOfMeasure: $scope.unitOfMeasure, 
			lot: $scope.lot,
			type: $scope.type
		};
		$scope.materials.push(material);
	};
});