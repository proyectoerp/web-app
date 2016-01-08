app.factory('solpedFactory', function($http) {
	
	var factory = {};
	factory.getSolpeds = function(solpeds, callback) {
		$http.get('/erp/solicitudPedido', {}).
		then(function(response) {
			$.each(response.data._embedded.solicitudPedido, function(index, value) {
				solpeds.push({
					id: value.codigo,
					creationDate: value.fechaCreacion,
					docType: value.tipoDocumento,
					docCode: value.nroDocumento,
					provider: value.proveedor,					
					discount: value.descuento,
					igv: value.igv,
					subTotal: value.subtotal,
					total: value.total,
					netAmount: value.importeNeto,
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.searchSolped = function(solped) {
		
	}
	
	return factory;
});