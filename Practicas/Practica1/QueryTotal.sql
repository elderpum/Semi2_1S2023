use practica1_semi2

DROP TABLE IF exists Temporal
GO
;

DROP TABLE IF exists Tsunami
GO
;

DROP TABLE IF exists Fecha
GO
;

DROP TABLE IF exists Pais
GO
;

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

---------------------------------------------------

BULK INSERT 
	Temporal
From 
	'C:\Users\elder.DESKTOP-81GR7TM\Documents\USAC\Semi2\Lab\Repo\Practicas\Practica1\limpio_historial_tsumamis.csv'
WITH(
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	FIRSTROW = 2
);

--------------------------------------------------

INSERT INTO Pais (Pais) SELECT DISTINCT Country FROM Temporal;

INSERT INTO Fecha (Year) SELECT DISTINCT Year FROM Temporal;

INSERT INTO Tsunami (Max_water_height, Total_deaths, Total_damage, Total_houses_destroyed, Total_houses_damaged, Id_pais, Id_fecha)
select   coalesce(cast(Max_water_height as decimal(10,2)), 0), 
         coalesce(cast(Total_deaths as int), 0), 
         coalesce(cast(Total_damage as decimal(10,2)), 0), 
         coalesce(cast(Total_houses_destroyed as int), 0), 
         coalesce(cast(Total_houses_damaged as int), 0), Pais.Id, Fecha.Id
FROM Temporal
Inner Join Pais on Pais.Pais = Temporal.Country
Inner Join Fecha on Fecha.Year = Temporal.year;

