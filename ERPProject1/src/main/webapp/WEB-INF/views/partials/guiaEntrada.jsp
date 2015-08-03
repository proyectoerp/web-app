<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
        
<div class="container cd-main-content">
    <div class="row">
        <ul class="breadcrumb breadcrumb-whitebg">
            <li><a href="#">Inventario</a></li>
            <li class="active">Guia de Entrada</li>
            </ul>
    </div>
    <div class="row row-title">
        <div class="col-md-9">
            <h2 id="navbar-buttons">Guia de Entrada</h2>
        </div>
        <div class="col-md-3">
            <div class="pull-right btn-title">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="panel-body">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-md-2 control-label" for="textinput">Tipo de Documento</label>
                    <div class="col-md-3">
                        <input id="textinput" name="textinput" placeholder="Tipo de Documento" class="form-control input-md"
                            type="text">
                    </div>
                    <label class="col-md-2 control-label" for="textinput">Nro de Documento</label>
                    <div class="col-md-3">
                        <input id="textinput" name="textinput" placeholder="Nro de Documento"
                            class="form-control input-md" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="textinput">Proveedor</label>
                    <div class="col-md-3">
                        <input id="textinput" name="textinput" placeholder="Proveedor" class="form-control input-md"
                            type="text">
                    </div>
                    <label class="col-md-2 control-label" for="textinput">Fecha de Recepcion</label>
                    <div class="col-md-3">
                        <div class='input-group date datepicker'>
                            <input type='text' class="form-control" /> <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label" for="textinput">Centro</label>
                    <div class="col-md-3">
                        <input id="textinput" name="textinput" placeholder="Centro" class="form-control input-md"
                            type="text">
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
                    <th>Cantidad Solicitada</th>
                    <th>Cantidad Recibida</th>
                    <th>Unidad de Medida</th>
                    <th>Costo</th>
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
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
                    <td>&nbsp;</td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <div role="tabpanel">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation"><a href="#documentosEntrega" aria-controls="documentosEntrega" role="tab" data-toggle="tab">Documentos de Entrega</a></li>
            <li role="presentation"><a href="#datosFactura" aria-controls="datosFactura" role="tab" data-toggle="tab">Datos de Factura</a></li>
        </ul>
        
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="documentosEntrega">
                <div class="row clearfix row-space">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">Tipo de Documento</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Tipo de Documento"
                                    class="form-control input-md" type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Nro de Documento</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Nro de Documento"
                                    class="form-control input-md" type="text">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="datosFactura">
                <div class="row clearfix row-space">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">Nro de Factura</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Nro de Factura"
                                    class="form-control input-md" type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Sub Total</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Sub Total"
                                    class="form-control input-md" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">Descuento</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Descuento"
                                    class="form-control input-md" type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Importe Neto</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Importe Neto"
                                    class="form-control input-md" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label" for="textinput">IGV</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="IGV"
                                    class="form-control input-md" type="text">
                            </div>
                            <label class="col-md-2 control-label" for="textinput">Total</label>
                            <div class="col-md-3">
                                <input id="textinput" name="textinput" placeholder="Total"
                                    class="form-control input-md" type="text">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>