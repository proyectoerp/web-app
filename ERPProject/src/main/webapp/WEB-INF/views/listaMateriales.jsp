<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
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
    <script src="<c:url value="/resources/js/megasite/modernizr.js"/>"></script> <!-- Modernizr -->

<style type="text/css">
.row-space {
	margin-top: 20px;
}
.breadcrumb-whitebg {
    background-color: #ffffff !important;
    margin-bottom: 10px !important;
    padding: 0px 15px;
}
.btn-100 {
    width: 100%;
}
.btn-100 .txt-drp {
    float: left;
}
.btn-100 .caret {
    float: right;
    margin-top: 8px;
}
.dropdown-menu-100 {
    width: 100%;
}
.row-title .btn-title {
    margin-top: 18px;
}
.dropdown-submenu{position:relative;}
.dropdown-submenu>.dropdown-menu{top:0;left:100%;margin-top:-6px;margin-left:-1px;-webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;}
.dropdown-submenu:hover>.dropdown-menu{display:block;}
.dropdown-submenu>a:after{display:block;content:" ";float:right;width:0;height:0;border-color:transparent;border-style:solid;border-width:5px 0 5px 5px;border-left-color:#cccccc;margin-top:5px;margin-right:-10px;}
.dropdown-submenu:hover>a:after{border-left-color:#ffffff;}
.dropdown-submenu.pull-left{float:none;}.dropdown-submenu.pull-left>.dropdown-menu{left:-100%;margin-left:10px;-webkit-border-radius:6px 0 6px 6px;-moz-border-radius:6px 0 6px 6px;border-radius:6px 0 6px 6px;}
</style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
</head>
    <body>
        <header class="cd-main-header">
            <a class="cd-logo" href="#0"><img src="<c:url value="/resources/images/cd-logo.svg"/>" alt="Logo"></a>
    
            <ul class="cd-header-buttons">
                <li><a class="cd-nav-trigger" href="#cd-primary-nav">Menu<span></span></a></li>
            </ul> <!-- cd-header-buttons -->
        </header>
        
        <nav class="cd-nav">
            <ul id="cd-primary-nav" class="cd-primary-nav is-fixed">
                <li class="has-children">
                    <a href="#">Datos Maestros</a>
                    <ul class="cd-nav-icons is-hidden">
                        <li class="go-back"><a href="#">Menu</a></li>
                        <li>
                            <a class="cd-nav-item item-1" href="#">
                                <h3>Gestion de Material</h3>
                                <p>Gestion de Material</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-2" href="#">
                                <h3>Gestion de Proveedor</h3>
                                <p>Gestion de Proveedor</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-3" href="#">
                                <h3>Gestion de Clientes</h3>
                                <p>Gestion de Clientes</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-4" href="#">
                                <h3>Gestion de Centros</h3>
                                <p>Gestion de Centros</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-5" href="#">
                                <h3>Gestion de Familia</h3>
                                <p>Gestion de Familia</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="has-children">
                    <a href="#">Inventarios</a>
                    <ul class="cd-nav-icons is-hidden">
                        <li class="go-back"><a href="#0">Menu</a></li>
                        <li>
                            <a class="cd-nav-item item-1" href="#">
                                <h3>Guia de Entrada</h3>
                                <p>Guia de Entrada</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-2" href="#">
                                <h3>Guia de Salida</h3>
                                <p>Guia de Salida</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-3" href="#">
                                <h3>Transferencias</h3>
                                <p>Transferencias</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-4" href="#">
                                <h3>Mermas</h3>
                                <p>Mermas</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-5" href="#">
                                <h3>Ajuste de Inventario</h3>
                                <p>Ajuste de Inventario</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="has-children">
                    <a href="#">Compras</a>
                    <ul class="cd-nav-icons is-hidden">
                        <li class="go-back"><a href="#0">Menu</a></li>
                        <li>
                            <a class="cd-nav-item item-1" href="#">
                                <h3>Orden de Compra</h3>
                                <p>Orden de Compra</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-2" href="#">
                                <h3>Solicitud de Pedido/Cotizacion</h3>
                                <p>Solicitud de Pedido/Cotizacion</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-3" href="#">
                                <h3>Orden de Servicio</h3>
                                <p>Orden de Servicio</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-4" href="#">
                                <h3>Sugerido de Compra</h3>
                                <p>Sugerido de Compra</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-5" href="#">
                                <h3>Importaciones</h3>
                                <p>Importaciones</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="has-children">
                    <a href="#">Produccion</a>
                    <ul class="cd-nav-icons is-hidden">
                        <li class="go-back"><a href="#0">Menu</a></li>
                        <li>
                            <a class="cd-nav-item item-1" href="#">
                                <h3>Lista de Materiales</h3>
                                <p>Lista de Materiales</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-2" href="#">
                                <h3>Centros de Trabajo</h3>
                                <p>Centros de Trabajo</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-3" href="#">
                                <h3>Ruta de Fabricacion</h3>
                                <p>Ruta de Fabricacion</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-4" href="#">
                                <h3>Planificador de Necesidades</h3>
                                <p>Planificador de Necesidades</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-5" href="#">
                                <h3>Ordenes de Fabricacion</h3>
                                <p>Ordenes de Fabricacion</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-6" href="#">
                                <h3>Plan Maestro de Produccion</h3>
                                <p>Plan Maestro de Produccion</p>
                            </a>
                        </li>
                        <li>
                            <a class="cd-nav-item item-7" href="#">
                                <h3>Seguimiento a Orden de Fabricacion</h3>
                                <p>Seguimiento a Orden de Fabricacion</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="has-children">
                    <a href="#">Ventas</a>
                    <ul class="cd-nav-icons is-hidden">
                        <li class="go-back"><a href="#0">Menu</a></li>
                        <li>
                            <a class="cd-nav-item item-1" href="#">
                                <h3>Pedido de Venta</h3>
                                <p>Pedido de Venta</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul> <!-- primary-nav -->
        </nav> <!-- cd-nav -->
        
        <div class="container">
            <div class="row">
                <ul class="breadcrumb breadcrumb-whitebg">
                    <li><a href="#">Datos Maestros</a></li>
                    <li class="active">Gestion de Material</li>
                    </ul>
            </div>
            <div class="row row-title">
                <div class="col-md-9">
                    <h2 id="navbar-buttons">Material</h2>
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
                <table class="table table-hover table-condensed table-bordered">
                    <thead>
                        <tr>
                            <th>Item</th>
                            <th>Producto</th>
                            <th>Descripcion</th>
                            <th>Cantidad</th>
                            <th>Unidad Medida</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-md-9">
                </div>
                <div class="col-md-3">
                    <div class="pull-right">
                        <a href="#" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span> Grabar</a>
                        <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Cancelar</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="<c:url value="/resources/js/jquery/jquery-2.1.1.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery/jquery.mobile.custom.min.js"/>"></script>
        <script src="<c:url value="/resources/js/megasite/main.js"/>"></script> <!-- Resource jQuery -->
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
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