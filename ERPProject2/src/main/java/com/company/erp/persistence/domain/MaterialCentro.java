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
@Entity(name = "material_centro")

public class MaterialCentro/* extends AbstractPersistable<Long>*/ {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@ManyToOne
	@JoinColumn(name="material_id")
    private Material material;
	
	@ManyToOne
	@JoinColumn(name="centro_id")
    private Centro centro;
	
	@Column(name = "estado", length=50)
	private String estado;
	
	@Column(name = "UMB", length = 50)
	private String umb;
	
	@JsonSerialize(using=JsonDateSerializer.class)
	@Column(name = "fecha_fin_validez")
	private Calendar fechaFinValidez;
	
	@Column(name = "stock_seguridad")
	private Integer stockSeguridad;

	@Column(name = "stock_actual")
	private Integer stockActual;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Material getMaterial() {
		return material;
	}

	public void setMaterial(Material material) {
		this.material = material;
	}

	public Centro getCentro() {
		return centro;
	}

	public void setCentro(Centro centro) {
		this.centro = centro;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getUmb() {
		return umb;
	}

	public void setUmb(String umb) {
		this.umb = umb;
	}

	public Calendar getFechaFinValidez() {
		return fechaFinValidez;
	}

	public void setFechaFinValidez(Calendar fechaFinValidez) {
		this.fechaFinValidez = fechaFinValidez;
	}

	public Integer getStockSeguridad() {
		return stockSeguridad;
	}

	public void setStockSeguridad(Integer stockSeguridad) {
		this.stockSeguridad = stockSeguridad;
	}

	public Integer getStockActual() {
		return stockActual;
	}

	public void setStockActual(Integer stockActual) {
		this.stockActual = stockActual;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
