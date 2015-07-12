package com.company.erp.persistence.domain;


import java.util.Calendar;


import javax.persistence.Column;
import javax.persistence.Entity;



import org.springframework.data.jpa.domain.AbstractPersistable;

import com.company.erp.util.JsonDateSerializer;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

/**
 * Suscriber entity definition
 * @author bpari
 *
 */
@Entity(name = "material")
public class Material extends AbstractPersistable<Long> {
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1511961182842257948L;

	@Column(name = "codigo",length=20)
	private String codigo;
	
	@Column(name = "familia", length = 25)
	private String familia;

	@Column(name = "descripcion", length = 50)
	private String descripcion;
	
	@Column(name = "modelo", length = 25)
	private String modelo;
	
	@Column(name = "umb", length = 50)
	private String umb;
	
	
	@JsonSerialize(using=JsonDateSerializer.class)
	@Column(name = "fecha_creacion")
	private Calendar fechaCreacion;
	
	@JsonSerialize(using=JsonDateSerializer.class)
	@Column(name = "fecha_fin_validez")
	private Calendar fechaFinValidez;
	
	@Column(name = "tipo_producto", length=25)
	private String tipoProducto;
	
	@Column(name = "peso")
	private int peso;
	
	@Column(name = "estado", length=25)
	private String estado;
	
	@Column(name = "costo_promedio",precision=5)
	private double costoPromedio;
	
	@Column(name = "proveedor", length=50)
	private String proveedor;
	
	@Column(name = "um_pedido",precision=5)
	private double umPedido;
	
	@Column(name = "descripcion2", length = 50)
	private String descripcion2;
	
	@Column(name = "um_venta",precision=5)
	private double umVenta;
	
	@Column(name = "precio_venta_no_igv",precision=5)
	private double precioVentaSinIGV;
	
	@Column(name = "precio_venta_si_igv",precision=5)
	private double precioVentaConIGV;
	
	@Column(name = "utilidad",precision=5)
	private double utilidad;
	
	@Column(name = "um_lote",precision=5)
	private double umLote;
	
	@Column(name = "costo_produccion",precision=5)
	private double costoProduccion;
	
	@Column(name = "lista_materiales", length = 50)
	private String listaMateriales;
	
	@Column(name = "unidad_por_lote",precision=5)
	private double unidadPorLote;
	
	@Column(name = "ruta_fabricacion", length = 50)
	private String rutaFabricacion;
	
	@Column(name = "centro", length = 50)
	private String centro;
	
	@Column(name = "estado2", length=25)
	private String estado2;
	
	@Column(name = "stock_seguridad")
	private int stockSeguridad;
	
	@Column(name = "stock_actual")
	private int stockActual;
	
	@JsonSerialize(using=JsonDateSerializer.class)
	@Column(name = "fecha_fin_validez2")
	private Calendar fechaFinValidez2;
	
	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getFamilia() {
		return familia;
	}





	public void setFamilia(String familia) {
		this.familia = familia;
	}





	public String getDescripcion() {
		return descripcion;
	}





	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}





	public String getModelo() {
		return modelo;
	}





	public void setModelo(String modelo) {
		this.modelo = modelo;
	}





	public String getUmb() {
		return umb;
	}





	public void setUmb(String umb) {
		this.umb = umb;
	}





	public Calendar getFechaCreacion() {
		return fechaCreacion;
	}





	public void setFechaCreacion(Calendar fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}





	public Calendar getFechaFinValidez() {
		return fechaFinValidez;
	}





	public void setFechaFinValidez(Calendar fechaFinValidez) {
		this.fechaFinValidez = fechaFinValidez;
	}





	public String getTipoProducto() {
		return tipoProducto;
	}





	public void setTipoProducto(String tipoProducto) {
		this.tipoProducto = tipoProducto;
	}





	public int getPeso() {
		return peso;
	}





	public void setPeso(int peso) {
		this.peso = peso;
	}





	public String getEstado() {
		return estado;
	}





	public void setEstado(String estado) {
		this.estado = estado;
	}





	public double getCostoPromedio() {
		return costoPromedio;
	}





	public void setCostoPromedio(double costoPromedio) {
		this.costoPromedio = costoPromedio;
	}





	public String getProveedor() {
		return proveedor;
	}





	public void setProveedor(String proveedor) {
		this.proveedor = proveedor;
	}





	public double getUmPedido() {
		return umPedido;
	}





	public void setUmPedido(double umPedido) {
		this.umPedido = umPedido;
	}





	public String getDescripcion2() {
		return descripcion2;
	}





	public void setDescripcion2(String descripcion2) {
		this.descripcion2 = descripcion2;
	}





	public double getUmVenta() {
		return umVenta;
	}





	public void setUmVenta(double umVenta) {
		this.umVenta = umVenta;
	}





	public double getPrecioVentaSinIGV() {
		return precioVentaSinIGV;
	}





	public void setPrecioVentaSinIGV(double precioVentaSinIGV) {
		this.precioVentaSinIGV = precioVentaSinIGV;
	}





	public double getPrecioVentaConIGV() {
		return precioVentaConIGV;
	}





	public void setPrecioVentaConIGV(double precioVentaConIGV) {
		this.precioVentaConIGV = precioVentaConIGV;
	}





	public double getUtilidad() {
		return utilidad;
	}





	public void setUtilidad(double utilidad) {
		this.utilidad = utilidad;
	}





	public double getUmLote() {
		return umLote;
	}





	public void setUmLote(double umLote) {
		this.umLote = umLote;
	}





	public double getCostoProduccion() {
		return costoProduccion;
	}





	public void setCostoProduccion(double costoProduccion) {
		this.costoProduccion = costoProduccion;
	}





	public String getListaMateriales() {
		return listaMateriales;
	}





	public void setListaMateriales(String listaMateriales) {
		this.listaMateriales = listaMateriales;
	}





	public double getUnidadPorLote() {
		return unidadPorLote;
	}





	public void setUnidadPorLote(double unidadPorLote) {
		this.unidadPorLote = unidadPorLote;
	}





	public String getRutaFabricacion() {
		return rutaFabricacion;
	}





	public void setRutaFabricacion(String rutaFabricacion) {
		this.rutaFabricacion = rutaFabricacion;
	}





	public String getCentro() {
		return centro;
	}





	public void setCentro(String centro) {
		this.centro = centro;
	}





	public String getEstado2() {
		return estado2;
	}





	public void setEstado2(String estado2) {
		this.estado2 = estado2;
	}





	public int getStockSeguridad() {
		return stockSeguridad;
	}





	public void setStockSeguridad(int stockSeguridad) {
		this.stockSeguridad = stockSeguridad;
	}





	public int getStockActual() {
		return stockActual;
	}





	public void setStockActual(int stockActual) {
		this.stockActual = stockActual;
	}





	public Calendar getFechaFinValidez2() {
		return fechaFinValidez2;
	}





	public void setFechaFinValidez2(Calendar fechaFinValidez2) {
		this.fechaFinValidez2 = fechaFinValidez2;
	}





	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
