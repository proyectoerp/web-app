<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>ERP</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/carousel.css">

<style type="text/css">
.row-space {
	margin-top: 20px;
}
</style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brand</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-haspopup="true" aria-expanded="false">Datos Maestros <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Gestion de Material</a></li>
                                <li><a href="#">Gestion de Proveedor</a></li>
                                <li><a href="#">Gestion de Clientes</a></li>
                                <li><a href="#">Gestion de Centros</a></li>
                                <li><a href="#">Gestion de Familia</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-haspopup="true" aria-expanded="false">
                                Inventarios <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Gestion de Inventario</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Guia de Entrada</a></li>
                                        <li><a href="#">Guia de Salida</a></li>
                                        <li><a href="#">Transferencias</a></li>
                                        <li><a href="#">Mermas</a></li>
                                        <li><a href="#">Ajuste de Inventario</a></li>
                                    </ul></li>
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Reportes de Inventario</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Reporte de stock (kardex)</a></li>
                                        <li><a href="#">Reporte de movimientos</a></li>
                                        <li><a href="#">Reporte de ajustes de inventarios</a></li>
                                        <li><a href="#">Reporte de mermas</a></li>
                                        <li><a href="#">Reporte de guias de entrada</a></li>
                                        <li><a href="#">Reporte de guias de salida</a></li>
                                        <li><a href="#">Reporte de anulaciones</a></li>
                                        <li><a href="#">Reporte stock mínimo</a></li>
                                        <li><a href="#">Reporte de materiales</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-haspopup="true" aria-expanded="false">
                                Compras <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Gestion de Compras</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Orden de Compra</a></li>
                                        <li><a href="#">Solicitud de Pedido/Cotizacion</a></li>
                                        <li><a href="#">Orden de Servicio</a></li>
                                        <li><a href="#">Sugerido de Compra</a></li>
                                        <li><a href="#">Importaciones</a></li>
                                    </ul></li>
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Reportes</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Reporte de Proveedores</a></li>
                                        <li><a href="#">Reporte de Ordenes de Compra</a></li>
                                        <li><a href="#">Reporte de Solicitudes de Pedido</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-haspopup="true" aria-expanded="false">
                                Produccion <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Datos Maestros</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Lista de Materiales</a></li>
                                        <li><a href="#">Centros de Trabajo</a></li>
                                        <li><a href="#">Ruta de Fabricacion</a></li>
                                    </ul></li>
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Gestion de Produccion</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Planificador de Necesidades</a></li>
                                        <li><a href="#">Ordenes de Fabricacion</a></li>
                                        <li><a href="#">Plan Maestro de Produccion</a></li>
                                        <li><a href="#">Seguimiento a Orden de Fabricacion</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Reportes</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Reporte de Plan de Produccion</a></li>
                                        <li><a href="#">Reporte de Ordenes de Fabricacion</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-haspopup="true" aria-expanded="false">
                                Ventas <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Gestion de Ventas</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Pedido de Venta</a></li>
                                    </ul></li>
                                <li class="dropdown-submenu"><a tabindex="-1" href="#">Reportes</a>
                                    <ul class="dropdown-menu">
                                        <li><a tabindex="-1" href="#">Reporte de Pedidos de Venta</a></li>
                                        <li><a href="#">Reporte de Clientes</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="textinput">Codigo</label>
                        <div class="col-md-3">
                            <input id="textinput" name="textinput" placeholder="Codigo" class="form-control input-md"
                                type="text">
                        </div>
                        <label class="col-md-2 control-label" for="textinput">Descripcion Corta</label>
                        <div class="col-md-3">
                            <input id="textinput" name="textinput" placeholder="Descripcion Corta"
                                class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label" for="textinput">Familia</label>
                        <div class="col-md-3">
                            <input id="textinput" name="textinput" placeholder="Familia" class="form-control input-md"
                                type="text">
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div role="tabpanel">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#datosGenerales" aria-controls="datosGenerales"
                    role="tab" data-toggle="tab">Datos Generales</a></li>
                <li role="presentation"><a href="#compras" aria-controls="compras" role="tab" data-toggle="tab">Compras</a></li>
                <li role="presentation"><a href="#ventas" aria-controls="ventas" role="tab" data-toggle="tab">Ventas</a></li>
                <li role="presentation"><a href="#produccion" aria-controls="produccion" role="tab" data-toggle="tab">Produccion</a></li>
                <li role="presentation"><a href="#centro" aria-controls="centro" role="tab" data-toggle="tab">Centro</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="datosGenerales">
                    <div class="row clearfix row-space">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Modelo</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Modelo"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Tipo de Producto</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Tipo de Producto"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">UMB</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="UMB" class="form-control input-md"
                                        type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Peso (Kg)</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Peso (Kg)"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Fecha de Creacion</label>
                                <div class="col-md-3">
                                    <div class='input-group date datepicker'>
                                        <input type='text' class="form-control" /> <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Estado</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Estado"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Fecha Fin Validez</label>
                                <div class="col-md-3">
                                    <div class='input-group date datepicker'>
                                        <input type='text' class="form-control" /> <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="compras">
                    <div class="row clearfix row-space">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Costo Promedio</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Costo Promedio"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">UM Pedido</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="UM Pedido"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Proveedor</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Proveedor"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Descripcion</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Descripcion"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="ventas">
                    <div class="row clearfix row-space">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">UM Venta</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="UM Venta"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Utilidad (%)</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Utilidad (%)"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Precio Vta Sin IGV</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Precio Vta Sin IGV"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Precio Vta Con IGV</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Precio Vta Con IGV"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="produccion">
                    <div class="row clearfix row-space">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">UM Lote</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="UM Lote"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Unidad por Lote</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Unidad por Lote"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Costo de Produccion</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Costo de Produccion"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Ruta de Fabricacion</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Ruta de Fabricacion"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">List de Materiales</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="List de Materiales"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="centro">
                    <div class="row clearfix row-space">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Centro</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Centro"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Stock Seguridad</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Stock Seguridad"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Estado</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Estado"
                                        class="form-control input-md" type="text">
                                </div>
                                <label class="col-md-2 control-label" for="textinput">Fecha Fin Validez</label>
                                <div class="col-md-3">
                                    <div class='input-group date datepicker'>
                                        <input type='text' class="form-control" /> <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="textinput">Stock Actual</label>
                                <div class="col-md-3">
                                    <input id="textinput" name="textinput" placeholder="Stock Actual"
                                        class="form-control input-md" type="text">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row pull-right">
            <button type="button" class="btn btn-default">Grabar</button>
            <button type="button" class="btn btn-default">Cancelar</button>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
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