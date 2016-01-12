app.factory('fabricationOrdersFactory', function($http) {
	var factory = {};
	factory.getFabricationOrders = function(fabricationOrders, callback) {
		$http.get('/erp/ordenFabricacion', {}).
		then(function(response) {
			$.each(response.data._embedded.ordenFabricacion, function(index, value) {
				fabricationOrders.push({
					id: value.codigo,
					docType: value.tipoDocumento,
					docCode: value.numeroDocumento,
					store: value.almacen,
					product: value.product,
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
	
	factory.searchFabricationOrders = function(fabricationOrder) {
		
	}
	
	return factory;
});