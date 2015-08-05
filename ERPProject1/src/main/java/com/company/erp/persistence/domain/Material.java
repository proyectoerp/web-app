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
public class Material extends AbstractPersistable<Long> {
 
	
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
	private int peso;
	
	@Column(name = "estado", length=50)
	private String estado;
	
	@Column(name = "costo_promedio",precision=5)
	private double costoPromedio;
	
	@Column(name = "proveedor", length=50)
	private String proveedor;
	
	@Column(name = "um_pedido",length=50)
	private String umPedido;
	
		
	@Column(name = "um_venta",length=50)
	private String umVenta;
	
	@Column(name = "precio_venta_no_igv",precision=5)
	private double precioVentaSinIGV;
	
	@Column(name = "precio_venta_si_igv",precision=5)
	private double precioVentaConIGV;
	
	@Column(name = "utilidad",precision=5)
	private double utilidad;
	
	@Column(name = "um_lote",length=50)
	private String umLote;
	
	@Column(name = "costo_produccion",precision=5)
	private double costoProduccion;
	
	/*@Column(name = "lista_materiales", length = 50)
	private String listaMateriales;*/
	
	@Column(name = "unidad_por_lote",precision=5)
	private double unidadPorLote;
	
	@Column(name = "ruta_fabricacion", length = 50)
	private String rutaFabricacion;
	
	/*@Column(name = "centro", length = 50)
	private String centro;*/
	
	
	
	
}
