app.controller('familyController', function($scope, familyFactory, ngTableParams){
	
	init();
	
	function init() {
		$('#familyTree').jstree();
		
		$('#familyTree').on("changed.jstree", function (e, data) {
	      console.log(data.selected);
	    });
		
//		$('button').on('click', function () {
//	      $('#familyTree').jstree(true).select_node('child_node_1');
//	    });
	}
	
});