create DATABASE if not exists erp;

USE  erp;

create table formula(
   id bigint NOT NULL AUTO_INCREMENT primary key, 
   Codigo varchar(20) ,
   Descripcion  varchar (50) ,
   Producto  varchar (50) ,
   Lote  varchar (50) ,
   UM  varchar (50) ,
   tipo_material  varchar (50) 
   );
   
   create table familia(
   id bigint NOT NULL AUTO_INCREMENT primary key, 
   Codigo varchar(20) ,
   Descripcion  varchar (50),
   nivel  int,
   Estado  varchar (50),
   padre_id  bigint,
  FOREIGN KEY (padre_id) REFERENCES familia(id)
   );
   
CREATE TABLE material (

 id bigint NOT NULL AUTO_INCREMENT primary key, 
  
 Codigo varchar(20) ,
 
 familia_id bigint  ,
  
 Descripcion  varchar (50) ,

 Modelo varchar(50) ,
 
 UMB varchar(50) ,
  
 Fecha_creacion datetime,

  Fecha_fin_validez datetime,
  
  Tipo_producto varchar(50) ,
  
  Peso integer,
  
  Estado varchar(50) ,
  
  Costo_promedio double,
  
  Proveedor varchar(50) ,
  
  UM_pedido varchar(50),
    
  UM_venta varchar(50),
  
  Precio_venta_no_IGV double,
  
  Precio_venta_si_IGV double,
  
  Utilidad double,
  
  UM_lote varchar(50),
  
  Costo_Produccion double,
  
  formula_id bigint ,
  
  Unidad_por_Lote double,
  
  Ruta_fabricacion varchar(50),
  
  FOREIGN KEY (formula_id) REFERENCES formula(id),
  FOREIGN KEY (familia_id) REFERENCES familia(id)
  );
  
  
  
  create table centro(
   id bigint NOT NULL AUTO_INCREMENT primary key, 
   Codigo varchar(20) ,
   Descripcion  varchar (50),
   Direccion  varchar (50),
   Estado  varchar (50),
   TipoCentro  varchar (50),
   Telefono  varchar (50)
   );
   
   create table material_centro(
   id bigint NOT NULL AUTO_INCREMENT primary key, 
   material_id bigint,
   centro_id bigint,
   Estado  varchar (50),
   UMB varchar(50) ,
   Fecha_fin_validez datetime,
   Stock_seguridad integer,
   Stock_actual integer,
   FOREIGN KEY (material_id) REFERENCES material(id),
   FOREIGN KEY (centro_id) REFERENCES centro(id)
   );
  
  
  
  