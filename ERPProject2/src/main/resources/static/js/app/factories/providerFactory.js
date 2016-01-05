app.factory('providerFactory', function($http) {
	
	var factory = {};
	factory.getProviders = function(providers, callback) {
		$http.get('/erp/proveedor', {}).
		then(function(response) {
			$.each(response.data._embedded.proveedor, function(index, value) {
				providers.push({
					id: value.codigo,
					//Extraer todos los campos
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.searchProviders = function(provider) {
		
	}
	
	return factory;
});