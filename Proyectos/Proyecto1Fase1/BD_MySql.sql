create database proyectoF1_semi2;

use proyectoF1_semi2;

CREATE TABLE fake_mysql_vent(
Fecha VARCHAR(15), 
CodigoCliente VARCHAR(10), 
NombreCliente VARCHAR(200), 
TipoCliente VARCHAR(30), 
DireccionCliente VARCHAR(200), 
NumeroCliente VARCHAR(10), 
CodVendedor VARCHAR(10), 
NombreVendedor VARCHAR(200), 
Vacacionista VARCHAR(2), 
CodProducto VARCHAR(20), 
NombreProducto VARCHAR(200), 
MarcaProducto VARCHAR(200), 
Categoria VARCHAR(200), 
CodSucursal VARCHAR(20), 
NombreSucursal VARCHAR(200), 
DireccionSucursal VARCHAR(200), 
Region VARCHAR(100), 
Departamento VARCHAR(100), 
Unidades VARCHAR(20), 
PrecioUnitario VARCHAR(20)
);

CREATE TABLE fake_mysql_comp(
Fecha VARCHAR(15),
CodProveedor VARCHAR(10),
NombreProveedor VARCHAR(200),
DireccionProveedor VARCHAR(200),
NumeroProveedor VARCHAR(10),
WebProveedor VARCHAR(100),
CodProducto VARCHAR(20),
NombreProducto VARCHAR(200),
MarcaProducto VARCHAR(200),
Categoria VARCHAR(50),
CodSucursal VARCHAR(20),
NombreSucursal VARCHAR(200),
DireccionSucursal VARCHAR(200),
Region VARCHAR(100),
Departamento VARCHAR(100),
Unidades VARCHAR(20),
CostoU VARCHAR(20)
);


select * from fake_mysql_vent;
select * from fake_mysql_comp;

truncate table fake_mysql_vent;
truncate table fake_mysql_comp;


drop table fake_mysql_vent;
drop table fake_mysql_comp;