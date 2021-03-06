<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
        
<div class="container cd-main-content">
    <div class="row">
        <ul class="breadcrumb breadcrumb-whitebg">
            <li><a href="#">Produccion</a></li>
            <li class="active">Planificador de Necesidades</li>
            </ul>
    </div>
    <div class="row row-title">
        <div class="col-md-9">
            <h2 id="navbar-buttons">Planificador de Necesidades</h2>
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
                    <label class="col-md-2 control-label" for="textinput">Consulta por</label>
                    <div class="col-md-3">
                        <button class="btn btn-100 btn-default dropdown-toggle" type="button" id="menu1"
                            data-toggle="dropdown">
                            <span class="txt-drp">Seleccione</span> <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-100" role="menu" aria-labelledby="menu1">
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Orden de Fabricacion</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Pedido de Venta</a></li>
                        </ul>
                    </div>
                    <label class="col-md-2 control-label" for="textinput">Nro/Codigo</label>
                    <div class="col-md-3">
                        <input id="textinput" name="textinput" placeholder="Nro/Codigo"
                            class="form-control input-md" type="text">
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
</div>

<div class="row pull-right">
    <a href="#" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span> Ver Planificacion</a>
    <a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-ok"></span> Ver Produccion</a>
</div>