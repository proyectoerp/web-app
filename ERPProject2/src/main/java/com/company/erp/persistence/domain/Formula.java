package com.company.erp.persistence.domain;


import java.util.Calendar;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.data.jpa.domain.AbstractPersistable;

/**
 * Suscriber entity definition
 * @author bpari
 *
 */
@Entity(name = "formula")

public class Formula/* extends AbstractPersistable<Long>*/ {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name = "codigo",length=20)
	private String codigo;
	
	
	@Column(name = "descripcion", length = 50)
	private String descripcion;
	
	@Column(name = "producto", length = 50)
	private String producto;
	
	@Column(name = "lote", length = 50)
	private String lote;
	
	@Column(name = "um", length = 50)
	private String um;
	
	@Column(name = "tipo_material", length=50)
	private String tipoMaterial;

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

	public String getProducto() {
		return producto;
	}

	public void setProducto(String producto) {
		this.producto = producto;
	}

	public String getLote() {
		return lote;
	}

	public void setLote(String lote) {
		this.lote = lote;
	}

	public String getUm() {
		return um;
	}

	public void setUm(String um) {
		this.um = um;
	}

	public String getTipoMaterial() {
		return tipoMaterial;
	}

	public void setTipoMaterial(String tipoMaterial) {
		this.tipoMaterial = tipoMaterial;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
