use practica1_semi2

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