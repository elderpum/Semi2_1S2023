create database proyectoF1_semi2_bd1;

use proyectoF1_semi2_bd1;


CREATE TABLE fake_vent_1(
Fecha VARCHAR(15), 
CodigoCliente VARCHAR(10), 
NombreCliente VARCHAR(200), 
TipoCliente VARCHAR(30), 
DireccionCliente VARCHAR(200), 
NumeroCliente VARCHAR(10), 
CodVendedor VARCHAR(10), 
NombreVendedor VARCHAR(200), 
Vacacionista VARCHAR(10), 
CodProducto VARCHAR(20), 
NombreProducto VARCHAR(200), 
MarcaProducto VARCHAR(200), 
Categoria VARCHAR(200), 
CodSucursal VARCHAR(20), 
NombreSucursal VARCHAR(200), 
DireccionSucursal VARCHAR(200), 
Region VARCHAR(200), 
Departamento VARCHAR(200), 
Unidades VARCHAR(20), 
PrecioUnitario VARCHAR(20)
);

CREATE TABLE fake_comp_1(
Fecha VARCHAR(15),
CodProveedor VARCHAR(10),
NombreProveedor VARCHAR(200),
DireccionProveedor VARCHAR(200),
NumeroProveedor VARCHAR(10),
WebProveedor VARCHAR(200),
CodProducto VARCHAR(20),
NombreProducto VARCHAR(200),
MarcaProducto VARCHAR(200),
Categoria VARCHAR(200),
CodSucursal VARCHAR(20),
NombreSucursal VARCHAR(200),
DireccionSucursal VARCHAR(200),
Region VARCHAR(200),
Departamento VARCHAR(200),
Unidades VARCHAR(20),
CostoU VARCHAR(20)
);


select * from fake_vent_1;
select * from fake_comp_1;

select count(*) from fake_vent_1;
select count(*) from fake_comp_1;

select distinct COUNT(CodSucursal) from fake_comp_1;

delete from fake_vent_1;
delete from fake_comp_1;


drop table fake_vent_1;
drop table fake_comp_1;
