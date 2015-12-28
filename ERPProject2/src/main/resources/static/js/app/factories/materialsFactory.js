app.factory('materialsFactory', function($http) {
	/*
	var materials = [
	    {id:'1111', name:'material 1', description:'descripcion 1', unitOfMeasure:'unidad 1', lot:'lote 1'},
	    {id:'1112', name:'material 2', description:'descripcion 2', unitOfMeasure:'unidad 2', lot:'lote 2'},
	    {id:'1113', name:'material 3', description:'descripcion 3', unitOfMeasure:'unidad 3', lot:'lote 3'},
	    {id:'1114', name:'material 4', description:'descripcion 4', unitOfMeasure:'unidad 4', lot:'lote 4'},
	    {id:'1115', name:'material 5', description:'descripcion 5', unitOfMeasure:'unidad 5', lot:'lote 5'},
	    {id:'1116', name:'material 6', description:'descripcion 6', unitOfMeasure:'unidad 6', lot:'lote 6'},
	    {id:'1117', name:'material 7', description:'descripcion 7', unitOfMeasure:'unidad 7', lot:'lote 7'},
	    {id:'1118', name:'material 8', description:'descripcion 8', unitOfMeasure:'unidad 8', lot:'lote 8'},
	    {id:'1119', name:'material 9', description:'descripcion 9', unitOfMeasure:'unidad 9', lot:'lote 9'},
	    {id:'1120', name:'material 10', description:'descripcion 10', unitOfMeasure:'unidad 10', lot:'lote 10'},
	    {id:'1121', name:'material 11', description:'descripcion 11', unitOfMeasure:'unidad 11', lot:'lote 11'}
	];
	*/
	var factory = {};
	factory.getMaterials = function(materials, callback) {
		$http.get('/erp/material', {}).
		then(function(response) {
			$.each(response.data._embedded.material, function(index, value) {
				materials.push({
					id: value.codigo,
					description: value.descripcion,
					type: value.tipoProducto,
					creationDate: value.fechaCreacion,
					validationEndDate: value.fechaFinValidez,
					weight: value.peso,
					averageCost: value.costoPromedio,
					provider: value.proveedor,
					umOrder: value.umPedido,
					umSale: value.umVenta,
					umLot: value.umLote,
					salePriceWithoutIGV: value.precioVentaSinIGV,
					salePriceWithIGV: value.precioVentaConIGV,
					profit: value.utilidad,
					productionCost: value.costoProduccion,
					//family: value.familia.codigo,
					model: value.modelo,
					umb: value.umb,
					status: value.estado
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.searchMaterials = function(material) {
		
	}
	
	return factory;
});