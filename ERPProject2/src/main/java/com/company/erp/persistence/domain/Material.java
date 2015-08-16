package com.company.erp.persistence.domain;


import java.util.Calendar;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.data.jpa.domain.AbstractPersistable;

import com.company.erp.util.JsonDateSerializer;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

/**
 * Suscriber entity definition
 * @author bpari
 *
 */
@Entity(name = "material")
public class Material /*extends AbstractPersistable<Long>*/ {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name = "codigo",length=20)
	private String codigo;
	
	/*@Column(name = "familia", length = 50)
	private String familia;*/

	@Column(name = "descripcion", length = 50)
	private String descripcion;
	
	@Column(name = "modelo", length = 50)
	private String modelo;
	
	@Column(name = "umb", length = 50)
	private String umb;
	
	
	@JsonSerialize(using=JsonDateSerializer.class)
	@Column(name = "fecha_creacion")
	private Calendar fechaCreacion;
	
	@JsonSerialize(using=JsonDateSerializer.class)
	@Column(name = "fecha_fin_validez")
	private Calendar fechaFinValidez;
	
	@Column(name = "tipo_producto", length=50)
	private String tipoProducto;
	
	@Column(name = "peso")
	private Integer peso;
	
	@Column(name = "estado", length=50)
	private String estado;
	
	@Column(name = "costo_promedio",precision=5)
	private Double costoPromedio;
	
	@Column(name = "proveedor", length=50)
	private String proveedor;
	
	@Column(name = "um_pedido",length=50)
	private String umPedido;
	
		
	@Column(name = "um_venta",length=50)
	private String umVenta;
	
	@Column(name = "precio_venta_no_igv",precision=5)
	private Double precioVentaSinIGV;
	
	@Column(name = "precio_venta_si_igv",precision=5)
	private Double precioVentaConIGV;
	
	@Column(name = "utilidad",precision=5)
	private Double utilidad;
	
	@Column(name = "um_lote",length=50)
	private String umLote;
	
	@Column(name = "costo_produccion",precision=5)
	private Double costoProduccion;
	
	/*@Column(name = "lista_materiales", length = 50)
	private String listaMateriales;*/
	
	@Column(name = "unidad_por_lote",precision=5)
	private Double unidadPorLote;
	
	@Column(name = "ruta_fabricacion", length = 50)
	private String rutaFabricacion;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
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

	public Integer getPeso() {
		return peso;
	}

	public void setPeso(Integer peso) {
		this.peso = peso;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Double getCostoPromedio() {
		return costoPromedio;
	}

	public void setCostoPromedio(Double costoPromedio) {
		this.costoPromedio = costoPromedio;
	}

	public String getProveedor() {
		return proveedor;
	}

	public void setProveedor(String proveedor) {
		this.proveedor = proveedor;
	}

	public String getUmPedido() {
		return umPedido;
	}

	public void setUmPedido(String umPedido) {
		this.umPedido = umPedido;
	}

	public String getUmVenta() {
		return umVenta;
	}

	public void setUmVenta(String umVenta) {
		this.umVenta = umVenta;
	}

	public Double getPrecioVentaSinIGV() {
		return precioVentaSinIGV;
	}

	public void setPrecioVentaSinIGV(Double precioVentaSinIGV) {
		this.precioVentaSinIGV = precioVentaSinIGV;
	}

	public Double getPrecioVentaConIGV() {
		return precioVentaConIGV;
	}

	public void setPrecioVentaConIGV(Double precioVentaConIGV) {
		this.precioVentaConIGV = precioVentaConIGV;
	}

	public Double getUtilidad() {
		return utilidad;
	}

	public void setUtilidad(Double utilidad) {
		this.utilidad = utilidad;
	}

	public String getUmLote() {
		return umLote;
	}

	public void setUmLote(String umLote) {
		this.umLote = umLote;
	}

	public Double getCostoProduccion() {
		return costoProduccion;
	}

	public void setCostoProduccion(Double costoProduccion) {
		this.costoProduccion = costoProduccion;
	}

	public Double getUnidadPorLote() {
		return unidadPorLote;
	}

	public void setUnidadPorLote(Double unidadPorLote) {
		this.unidadPorLote = unidadPorLote;
	}

	public String getRutaFabricacion() {
		return rutaFabricacion;
	}

	public void setRutaFabricacion(String rutaFabricacion) {
		this.rutaFabricacion = rutaFabricacion;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	/*@Column(name = "centro", length = 50)
	private String centro;*/
	
	
	
	
}
