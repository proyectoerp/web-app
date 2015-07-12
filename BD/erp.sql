create DATABASE if not exists erp;

USE  erp;

CREATE TABLE Material (

 id bigint NOT NULL AUTO_INCREMENT primary key, 
  
 Codigo varchar(20) ,
 
 Familia varchar(25)  ,
  
 Descripcion  varchar (50) ,

 Modelo varchar(25) ,
 
 UMB varchar(50) ,
  
 Fecha_creacion datetime,

  Fecha_fin_validez datetime,
  
  Tipo_producto varchar(25) ,
  
  Peso integer,
  
  Estado varchar(25) ,
  
  Costo_promedio double,
  
  Proveedor varchar(50) ,
  
  UM_pedido double,
    
  Descripcion2 varchar(50) ,
  
  UM_venta double,
  
  Precio_venta_no_IGV double,
  
  Precio_venta_si_IGV double,
  
  Utilidad double,
  
  UM_lote double,
  
  Costo_Produccion double,
  
  Lista_Materiales varchar(50) ,
  
  Unidad_por_Lote double,
  
  Ruta_fabricacion varchar(50) ,
  
  Centro varchar(50) ,
  
  Estado2 varchar(25),
  
  Stock_seguridad integer,
  
  Stock_actual integer,
  
  Fecha_fin_validez2 datetime
  
  );