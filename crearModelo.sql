use practica1_semi2

CREATE TABLE Temporal(
	Year varchar(100),
	Mo varchar(100),
	Max_Water_Height varchar(100),
	Total_Deaths varchar(100),
	Total_Damage varchar(100),
	Total_Houses_Destroyed varchar(100),
	Total_Houses_Damaged varchar(100),
	Country varchar(100)
);

CREATE TABLE Pais(
	Id int identity constraint city_pk Primary Key,
	Pais varchar(100)
);

CREATE TABLE Fecha (
	Id int identity constraint fecha_pk Primary Key,
	Year int,
	Mo int
);

CREATE TABLE Tsunami (
	Id int identity constraint tsunami_pk Primary Key,
	Max_water_height decimal,
	Total_deaths int,
	Total_damage decimal,
	Total_houses_destroyed int,
	Total_houses_damaged int,
	Id_pais int not null,
	Id_fecha int not null
);

ALTER TABLE
	Tsunami
ADD
	CONSTRAINT tsunami_pais_FK Foreign Key (Id_pais) REFERENCES Pais (Id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE
	Tsunami
ADD
	CONSTRAINT tsunami_fecha_FK Foreign Key (Id_fecha) REFERENCES Fecha (Id) ON DELETE NO ACTION ON UPDATE NO ACTION;