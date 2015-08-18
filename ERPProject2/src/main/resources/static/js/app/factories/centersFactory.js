app.factory('centersFactory', function($http) {
	var factory = {};
	factory.getCenters = function(centers, callback) {
		$http.get('/erp/centro', {}).
		then(function(response) {
			$.each(response.data._embedded.centro, function(index, value) {
				centers.push({
					id: value.codigo,
					description: value.descripcion,
					centerType: value.tipoCentro,
					status: value.estado
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.searchCenters = function(center) {
		
	}
	
	return factory;
});