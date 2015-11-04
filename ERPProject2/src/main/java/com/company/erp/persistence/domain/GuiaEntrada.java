package com.company.erp.persistence.domain;


import java.util.Calendar;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.data.jpa.domain.AbstractPersistable;

import com.company.erp.util.JsonDateSerializer;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

/**
 * Suscriber entity definition
 * @author bpari
 *
 */
@Entity(name = "guia_entrada")

public class GuiaEntrada/* extends AbstractPersistable<Long>*/ {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name = "codigo",length=20)
	private String codigo;
	
	@ManyToOne
	@JoinColumn(name="centro_id")
    private Centro centro;
	
	@JsonSerialize(using=JsonDateSerializer.class)
	@Column(name = "fecha_recepcion")
	private Calendar fechaRecepcion;
	
	
	@Column(name = "tipo_documento", length=50)
	private String tipoDocumento;
	
	@Column(name = "nro_documento", length = 50)
	private String nroDocumento;
	
	@Column(name = "proveedor_id")
	private Integer proveedor;
	
	@Column(name = "nro_factura", length = 50)
	private String nroFactura;

	@Column(name = "descuento",precision=5)
	private Double descuento;

	@Column(name = "igv",precision=5)
	private Double igv;
	
	@Column(name = "subtotal",precision=5)
	private Double subtotal;
	
	@Column(name = "total",precision=5)
	private Double total;
	
	@Column(name = "importe_neto",precision=5)
	private Double importeNeto;

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

	public Centro getCentro() {
		return centro;
	}

	public void setCentro(Centro centro) {
		this.centro = centro;
	}

	public Calendar getFechaRecepcion() {
		return fechaRecepcion;
	}

	public void setFechaRecepcion(Calendar fechaRecepcion) {
		this.fechaRecepcion = fechaRecepcion;
	}

	public String getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getNroDocumento() {
		return nroDocumento;
	}

	public void setNroDocumento(String nroDocumento) {
		this.nroDocumento = nroDocumento;
	}

	public Integer getProveedor() {
		return proveedor;
	}

	public void setProveedor(Integer proveedor) {
		this.proveedor = proveedor;
	}

	public String getNroFactura() {
		return nroFactura;
	}

	public void setNroFactura(String nroFactura) {
		this.nroFactura = nroFactura;
	}

	public Double getDescuento() {
		return descuento;
	}

	public void setDescuento(Double descuento) {
		this.descuento = descuento;
	}

	public Double getIgv() {
		return igv;
	}

	public void setIgv(Double igv) {
		this.igv = igv;
	}

	public Double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(Double subtotal) {
		this.subtotal = subtotal;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Double getImporteNeto() {
		return importeNeto;
	}

	public void setImporteNeto(Double importeNeto) {
		this.importeNeto = importeNeto;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	
	
}
