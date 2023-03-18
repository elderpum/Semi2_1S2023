create database seminario2_201700761;

use seminario2_201700761;

create table proveedor(
id_proveedor int identity(1,1) primary key,
codigo_prov varchar(10),
nombre_prov varchar(200),
numero_prov varchar(10),
web_prov varchar(200),
direccion_prov varchar(200) 
);

create table producto(
id_producto int identity(1,1) primary key,
codigo_prod varchar(15),
nombre_prod varchar(200),
marca_prod varchar(200),
categoria_prod varchar(200) 
);

create table sucursal(
id_sucursal int identity(1,1) primary key,
codigo_suc varchar(15) ,
nombre_suc varchar(200) ,
direccion_suc varchar(200) 
-- departamento_suc varchar(150) not null,
-- region_suc varchar(150) not null
);

create table ubicacion(
id_ubicacion int identity(1,1) primary key,
departamento varchar(200),
region varchar(200) 
);

create table clientes(
id_cliente int identity(1,1) primary key,
codigo_cli varchar(15),
nombre_cli varchar(200),
tipo_cli varchar(50),
direccion_cli varchar(200),
numero int 
);

create table vendedor(
id_vendedor int identity(1,1) primary key,
codigo_vend varchar(15),
nombre_vend varchar(200),
vacacionista int 
);

create table compra (
id_compra int identity(1,1) primary key, 
fecha varchar(10),
unidades int,
costo decimal(10,2),
fk_id_proveedor int,
fk_id_producto int,
fk_id_sucursal int,
fk_id_ubicacion int,
foreign key (fk_id_proveedor) references proveedor(id_proveedor),
foreign key (fk_id_producto) references producto(id_producto),
foreign key (fk_id_sucursal) references sucursal(id_sucursal),
foreign key (fk_id_ubicacion) references ubicacion(id_ubicacion)
);

create table venta(
id_venta int identity(1,1) primary key,
fecha varchar(10),
unidades int,
precio_unitario decimal(10,2),
fk_id_cliente int,
fk_id_vendedor int,
fk_id_sucursal int,
fk_id_producto int,
fk_id_ubicacion int,
foreign key (fk_id_cliente) references clientes(id_cliente),
foreign key (fk_id_vendedor) references vendedor(id_vendedor),
foreign key (fk_id_sucursal) references sucursal(id_sucursal),
foreign key (fk_id_producto) references producto(id_producto),
foreign key (fk_id_ubicacion) references ubicacion(id_ubicacion)
);

create table ot(
id int,
total_ventas decimal(15,2)
)
drop table ot

alter table compra add  unitarioP as unidades*costo;
alter table venta add unitarioP as precio_unitario*unidades

select * from clientes;
select * from vendedor;
select * from proveedor;
select * from producto;   --  Saber que onda no toma la primera fila
select * from sucursal;
select * from ubicacion;
select * from compra;
select * from venta;


select count(id_cliente) from clientes; -- 295
select count(id_vendedor) from vendedor;  -- 59
select count(id_proveedor) from proveedor;  -- 323
select count(id_producto) from producto;   -- 228
select count(id_sucursal) from sucursal;   -- 89
select count(id_compra) from compra;   -- 237
select count(id_venta) from venta;   -- 218


--   "Tarea ejecutar SQL" exclusivo de vs
select ? = count(id_cliente) from clientes;
select ? = count([id_vendedor]) from vendedor
select ? = count(id_proveedor) from proveedor
select ? = count(id_producto) from producto
select ? = count(id_sucursal) from sucursal
select ? = count(id_compra) from compra
select ? = count(id_venta) from venta
select ? = count(id_ubicacion) from ubicacion


delete from compra;
delete from venta;
delete from proveedor;
delete from producto;
delete from sucursal;
delete from ubicacion;
delete from clientes;
delete from vendedor;

drop table compra;
drop table venta;
drop table proveedor;
drop table producto;
drop table sucursal;
drop table ubicacion;
drop table clientes;
drop table vendedor;