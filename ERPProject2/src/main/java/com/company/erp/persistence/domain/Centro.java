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
@Entity(name = "centro")

public class Centro/* extends AbstractPersistable<Long>*/ {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
	
	@Column(name = "codigo",length=20)
	private String codigo;
	
	
	@Column(name = "descripcion", length = 50)
	private String descripcion;
	
	@Column(name = "direccion", length = 50)
	private String direccion;
	
	@Column(name = "telefono", length = 50)
	private String telefono;
	
	@Column(name = "tipo_centro", length=50)
	private String tipoCentro;
	
	@Column(name = "estado", length=50)
	private String estado;

	
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



	public String getDireccion() {
		return direccion;
	}



	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}



	public String getTelefono() {
		return telefono;
	}



	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}



	public String getTipoCentro() {
		return tipoCentro;
	}



	public void setTipoCentro(String tipoCentro) {
		this.tipoCentro = tipoCentro;
	}



	public String getEstado() {
		return estado;
	}



	public void setEstado(String estado) {
		this.estado = estado;
	}



	
	

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
