app.factory('saleOrderFactory', function($http) {
	
	var factory = {};
	factory.getSaleOrders = function(saleOrders, callback) {
		$http.get('/erp/pedidoVenta', {}).
		then(function(response) {
			$.each(response.data._embedded.pedidoVenta, function(index, value) {
				saleOrders.push({
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
	
	factory.searchSaleOrder = function(saleOrder) {
		
	}
	
	return factory;
});