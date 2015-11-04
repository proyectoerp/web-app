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
@Entity(name = "ruta_fabricacion")

public class RutaFabricacion/* extends AbstractPersistable<Long>*/ {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name = "codigo",length=20)
	private String codigo;
	
	@Column(name = "descripcion", length = 50)
	private String descripcion;
	
	@ManyToOne
	@JoinColumn(name="material_id")
    private Material material;
	
	@ManyToOne
	@JoinColumn(name="centro_trabajo_id")
    private CentroTrabajo centroTrabajo;
	
	@Column(name = "proceso_externo", length=50)
	private String procesoExterno;
	
	@Column(name = "UMB", length = 50)
	private String umb;
	
	@Column(name = "mano_obra")
	private Integer manoDeObra;

	@Column(name = "costo_fijo",precision=5)
	private Double costoFijo;

	@Column(name = "lote", length = 50)
	private String lote;
	
	@Column(name = "nro_centros_trabajo")
	private Integer nroCentrosTrabajo;

	@Column(name = "porc_gastos_indirectos",precision=5)
	private Double porcGastosIndirectos;

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

	public Material getMaterial() {
		return material;
	}

	public void setMaterial(Material material) {
		this.material = material;
	}

	public CentroTrabajo getCentroTrabajo() {
		return centroTrabajo;
	}

	public void setCentroTrabajo(CentroTrabajo centroTrabajo) {
		this.centroTrabajo = centroTrabajo;
	}

	public String getProcesoExterno() {
		return procesoExterno;
	}

	public void setProcesoExterno(String procesoExterno) {
		this.procesoExterno = procesoExterno;
	}

	public String getUmb() {
		return umb;
	}

	public void setUmb(String umb) {
		this.umb = umb;
	}

	public Integer getManoDeObra() {
		return manoDeObra;
	}

	public void setManoDeObra(Integer manoDeObra) {
		this.manoDeObra = manoDeObra;
	}

	public Double getCostoFijo() {
		return costoFijo;
	}

	public void setCostoFijo(Double costoFijo) {
		this.costoFijo = costoFijo;
	}

	public String getLote() {
		return lote;
	}

	public void setLote(String lote) {
		this.lote = lote;
	}

	public Integer getNroCentrosTrabajo() {
		return nroCentrosTrabajo;
	}

	public void setNroCentrosTrabajo(Integer nroCentrosTrabajo) {
		this.nroCentrosTrabajo = nroCentrosTrabajo;
	}

	public Double getPorcGastosIndirectos() {
		return porcGastosIndirectos;
	}

	public void setPorcGastosIndirectos(Double porcGastosIndirectos) {
		this.porcGastosIndirectos = porcGastosIndirectos;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

	
	
	
	
}
