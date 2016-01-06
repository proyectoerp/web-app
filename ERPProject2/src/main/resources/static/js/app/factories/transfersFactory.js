app.factory('transfersFactory', function($http) {
	var factory = {};
	factory.getTransfers = function(transfers, callback) {
		$http.get('/erp/transferencia', {}).
		then(function(response) {
			$.each(response.data._embedded.transferencia, function(index, value) {
				transfers.push({
					id: value.codigo,
					description: value.descripcion,
					transferType: value.tipoCentro,
					status: value.estado
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.searchTransfers = function(transfer) {
		
	}
	
	return factory;
});