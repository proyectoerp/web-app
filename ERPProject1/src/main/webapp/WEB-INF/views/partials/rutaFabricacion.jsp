<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
        
<div class="container cd-main-content">
    <div class="row">
        <ul class="breadcrumb breadcrumb-whitebg">
            <li><a href="#">Produccion</a></li>
            <li class="active">Ruta de Fabricacion</li>
            </ul>
    </div>
    <div class="row row-title">
        <div class="col-md-9">
            <h2 id="navbar-buttons">Ruta de Fabricacion</h2>
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
                    <label class="col-md-2 control-label" for="textinput">N° Ruta</label>
                    <div class="col-md-3">
                        <input id="textinput" name="textinput" placeholder="N° Ruta" class="form-control input-md"
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
                    <th>N° Ruta</th>
                    <th>Centro de Trabajo</th>
                    <th>Descripcion</th>
                    <th>Mano de Obra (H)</th>
                    <th>Gastos Indirectos (%)</th>
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