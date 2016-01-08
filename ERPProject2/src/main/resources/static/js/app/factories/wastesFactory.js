app.factory('wastesFactory', function($http) {
	var factory = {};
	factory.getWastes = function(wastes, callback) {
		$http.get('/erp/merma', {}).
		then(function(response) {
			$.each(response.data._embedded.merma, function(index, value) {
				wastes.push({
					id: value.codigo,
					docType: value.tipoDocumento,
					docCode: value.numeroDocumento,
					center: value.centro,
					material: value.material,
					quantity: value.quantity,
					um: value.um,
					status: value.estado
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.searchWastes = function(waste) {
		
	}
	
	return factory;
});