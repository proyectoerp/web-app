<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>

<div class="container cd-main-content">
    <div class="row">
        <ul class="breadcrumb breadcrumb-whitebg">
            <li><a href="#">Datos Maestros</a></li>
            <li class="active">Gestion de Materiales</li>
            </ul>
    </div>
    <div class="row row-title">
        <div class="col-md-9">
            <h2 id="navbar-buttons">Gestion de Materiales</h2>
        </div>
        <div class="col-md-3">
            <div class="pull-right btn-title">
                <a href="#" class="btn btn-info"><span class="glyphicon glyphicon-search"></span> Buscar</a>
                <a ui-sref="agregarMateriales" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Agregar</a>
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
                        <button class="btn btn-100 btn-default dropdown-toggle" type="button" id="tipoMaterial"
                            data-toggle="dropdown">
                            <span class="txt-drp">Seleccione</span> <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-100" role="menu" aria-labelledby="tipoMaterial">
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