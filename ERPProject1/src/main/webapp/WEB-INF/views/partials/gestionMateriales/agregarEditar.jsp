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
        </div>
    </div>
    <div class="panel">
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
                                12/07/2015
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
                        </div>
                    </form>
                </div>
                <table class="table table-hover table-condensed table-bordered">
                 <thead>
                     <tr>
                         <th>Centro</th>
                         <th>Stock Actual</th>
                         <th>UMB</th>
                         <th>Stock Seguridad</th>
                         <th>Estado</th>
                            <th>Fecha Fin Validez</th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr>
                         <td>&nbsp;</td>
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
                            <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                            <td>&nbsp;</td>
                     </tr>
                 </tbody>
             </table>
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
                            <label class="col-md-2 control-label" for="textinput">Lista de Materiales</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Lista de Materiales"
                                    class="form-control input-md" type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Ruta de Fabricacion</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Ruta de Fabricacion"
                                    class="form-control input-md" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">Costo de Produccion</label>
                            <div class="col-md-3">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row pull-right">
        <a ui-sref="gestionMateriales" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span> Grabar</a>
        <a ui-sref="gestionMateriales" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Cancelar</a>
    </div>
</div>
