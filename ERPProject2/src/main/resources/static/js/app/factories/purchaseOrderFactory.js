app.factory('purchaseOrderFactory', function($http) {
	
	var factory = {};
	factory.getPurchaseOrders = function(purchaseOrders, callback) {
		$http.get('/erp/ordenCompra', {}).
		then(function(response) {
			$.each(response.data._embedded.ordenCompra, function(index, value) {
				purchaseOrders.push({
					id: value.codigo,
					receptionDate: value.fechaRecepcion,
					docType: value.tipoDocumento,
					docCode: value.nroDocumento,
					provider: value.proveedor,
					ticketNumber: value.nroFactura,
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
	
	factory.searchPurchaseOrder = function(purchaseOrder) {
		
	}
	
	return factory;
});