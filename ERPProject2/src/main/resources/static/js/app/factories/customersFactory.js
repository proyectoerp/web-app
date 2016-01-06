app.factory('customersFactory', function($http) {
	
	var factory = {};
	factory.getCustomers = function(customers, callback) {
		$http.get('/erp/cliente', {}).
		then(function(response) {
			$.each(response.data._embedded.cliente, function(index, value) {
				customers.push({
					id: value.codigo,
					//Extraer todos los campos
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.searchCustomers = function(customer) {
		
	}
	
	return factory;
});