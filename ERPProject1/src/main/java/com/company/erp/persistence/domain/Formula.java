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
public class Formula extends AbstractPersistable<Long> {
 
	
	private static final long serialVersionUID = 1511961182842257948L;
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
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
	
	
}
