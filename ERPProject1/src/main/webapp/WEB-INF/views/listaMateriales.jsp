<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en" ng-app="erpApp">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>ERP</title>

<!-- Bootstrap -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/megasite/reset.css"/>"> <!-- CSS reset -->
    <link rel="stylesheet" href="<c:url value="/resources/css/megasite/style.css"/>"> <!-- Resource style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/ng-table/ng-table.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
    <script src="<c:url value="/resources/js/megasite/modernizr.js"/>"></script> <!-- Modernizr -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
</head>
    <body>
		<%@ include file="menu.jspf" %>
        
        <div class="container cd-main-content" ng-controller="materialsController">
            <div class="row">
                <ul class="breadcrumb breadcrumb-whitebg">
                    <li><a href="#">Produccion</a></li>
                    <li class="active">Lista de Materiales</li>
                    </ul>
            </div>
            <div class="row row-title">
                <div class="col-md-9">
                    <h2 id="navbar-buttons">Lista de Materiales</h2>
                </div>
                <div class="col-md-3">
                    <div class="pull-right btn-title">
                        <a href="#" class="btn btn-info"><span class="glyphicon glyphicon-search"></span> Buscar</a>
                        <a href="#" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Agregar</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">N° Formulacion</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="N° Formulacion" class="form-control input-md"
                                    type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Descripcion</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Descripcion Corta"
                                    class="form-control input-md" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">Producto</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Producto" class="form-control input-md"
                                    type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Lote</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Lote"
                                    class="form-control input-md" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">Unidad Medida</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Unidad Medida" class="form-control input-md"
                                    type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Tipo de Material</label>
                            <div class="col-md-3">
                                <button class="btn btn-100 btn-default dropdown-toggle" type="button" id="menu1"
                                    data-toggle="dropdown">
                                    <span class="txt-drp">Seleccione</span> <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-100" role="menu" aria-labelledby="menu1">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Materia Prima</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Producto Terminado</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Componente</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-5">
                            </div>
                            <div class="col-md-5">
                                
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div role="tabpanel">
                <table ng-table="tableParams" class="table table-hover table-condensed table-bordered">
                    <thead>
                        <tr>
                            <th>N° Formulacion</th>
                            <th>Material</th>
                            <th>Descripcion</th>
                            <th>Unidad Medida</th>
                            <th>Lote</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="material in $data">
                            <td>{{material.id}}</td>
                            <td>{{material.name}}</td>
                            <td>{{material.description}}</td>
                            <td>{{material.unitOfMeasure}}</td>
                            <td>{{material.lot}}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="cd-overlay"></div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="<c:url value="/resources/js/jquery/jquery-2.1.1.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery/jquery.mobile.custom.min.js"/>"></script>
        <script src="<c:url value="/resources/js/megasite/main.js"/>"></script> <!-- Resource jQuery -->
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/angular/angular.min.js"/>"></script>
		<!-- Custom scripts -->
		<script src="<c:url value="/resources/js/app/app.js"/>"></script>
		<script src="<c:url value="/resources/js/app/controllers/materialsController.js"/>"></script>
		<script src="<c:url value="/resources/js/app/factories/materialsFactory.js"/>"></script>
		<script src="<c:url value="/resources/js/ng-table/ng-table.min.js"/>"></script>
        
        <script type="text/javascript">
    		$(document).ready(function() {
    			$('#myTab a').click(function(e) {
    				e.preventDefault()
    				$(this).tab('show')
    			});
    		});
    	</script>
    </body>
</html>