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
@Entity(name = "centro_trabajo")

public class CentroTrabajo/* extends AbstractPersistable<Long>*/ {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name = "codigo",length=20)
	private String codigo;
	
	
	@Column(name = "descripcion", length = 50)
	private String descripcion;
	
	@Column(name = "nro_obreros")
	private Integer nroObreros;
	
	@Column(name = "costo_obrero",precision=5)
	private Double costoObrero;
	
	@Column(name = "jornada_laboral", length = 50)
	private String jornadaLaboral;

	@Column(name = "nro_maquinas")
	private Integer nroMaquinas;
	
	@Column(name = "porc_gastos_varios",precision=5)
	private Double porcGastosVarios;

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

	public Integer getNroObreros() {
		return nroObreros;
	}

	public void setNroObreros(Integer nroObreros) {
		this.nroObreros = nroObreros;
	}

	public Double getCostoObrero() {
		return costoObrero;
	}

	public void setCostoObrero(Double costoObrero) {
		this.costoObrero = costoObrero;
	}

	public String getJornadaLaboral() {
		return jornadaLaboral;
	}

	public void setJornadaLaboral(String jornadaLaboral) {
		this.jornadaLaboral = jornadaLaboral;
	}

	public Integer getNroMaquinas() {
		return nroMaquinas;
	}

	public void setNroMaquinas(Integer nroMaquinas) {
		this.nroMaquinas = nroMaquinas;
	}

	public Double getPorcGastosVarios() {
		return porcGastosVarios;
	}

	public void setPorcGastosVarios(Double porcGastosVarios) {
		this.porcGastosVarios = porcGastosVarios;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
