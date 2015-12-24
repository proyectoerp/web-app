app.factory('workCentersFactory', function($http) {
	var factory = {};
	/*
	var workCenters = [
 	    {id:'1111', description:'descripcion 1', numberOfWorkers:'numberOfWorkers 1', costByWorker:'costByWorkere 1', numberOfMachines:'numberOfMachines 1', otherExpenses:'otherExpenses 1'},
 	    {id:'1112', description:'descripcion 2', numberOfWorkers:'numberOfWorkers 2', costByWorker:'costByWorkere 2', numberOfMachines:'numberOfMachines 2', otherExpenses:'otherExpenses 2'},
 	    {id:'1113', description:'descripcion 3', numberOfWorkers:'numberOfWorkers 3', costByWorker:'costByWorkere 3', numberOfMachines:'numberOfMachines 3', otherExpenses:'otherExpenses 3'},
 	    {id:'1114', description:'descripcion 4', numberOfWorkers:'numberOfWorkers 4', costByWorker:'costByWorkere 4', numberOfMachines:'numberOfMachines 4', otherExpenses:'otherExpenses 4'},
 	    {id:'1115', description:'descripcion 5', numberOfWorkers:'numberOfWorkers 5', costByWorker:'costByWorkere 5', numberOfMachines:'numberOfMachines 5', otherExpenses:'otherExpenses 5'},
 	    {id:'1116', description:'descripcion 6', numberOfWorkers:'numberOfWorkers 6', costByWorker:'costByWorkere 6', numberOfMachines:'numberOfMachines 6', otherExpenses:'otherExpenses 6'},
 	    {id:'1117', description:'descripcion 7', numberOfWorkers:'numberOfWorkers 7', costByWorker:'costByWorkere 7', numberOfMachines:'numberOfMachines 7', otherExpenses:'otherExpenses 7'},
 	    {id:'1118', description:'descripcion 8', numberOfWorkers:'numberOfWorkers 8', costByWorker:'costByWorkere 8', numberOfMachines:'numberOfMachines 8', otherExpenses:'otherExpenses 8'},
 	    {id:'1119', description:'descripcion 9', numberOfWorkers:'numberOfWorkers 9', costByWorker:'costByWorkere 9', numberOfMachines:'numberOfMachines 9', otherExpenses:'otherExpenses 9'},
 	    {id:'1120', description:'descripcion 10', numberOfWorkers:'numberOfWorkers 10', costByWorker:'costByWorkere 10', numberOfMachines:'numberOfMachines 10', otherExpenses:'otherExpenses 10'},
 	    {id:'1121', description:'descripcion 11', numberOfWorkers:'numberOfWorkers 11', costByWorker:'costByWorkere 11', numberOfMachines:'numberOfMachines 11', otherExpenses:'otherExpenses 11'}
 	];
	*/
	factory.getWorkCenters = function(workCenters, callback) {
		$http.get('/erp/centroTrabajo', {}).
		then(function(response) {
			$.each(response.data._embedded.centroTrabajo, function(index, value) {
				workCenters.push({					
					id: value.codigo,
					description: value.descripcion,
					numberOfWorkers: value.nroObreros,
					costByWorker: value.costoObrero,
					numberOfMachines: value.nroMaquinas,
					centerType: value.tipoCentro,
					otherExpenses: value.porcGastosVarios	
				});
			});
			
			callback();
		}, function(response) {
			console.log(response);
		});
	}
	
	factory.saveWorkCenter = function(workCenter) {
		
	}
	
	return factory;
});