use practica1_semi2

SELECT DISTINCT TOP (5) Pais.Id, sum(Tsunami.Total_houses_destroyed) as "Total de Casas Destruidas" FROM Tsunami 
INNER JOIN Pais ON Pais.Id = Tsunami.Id_pais
GROUP BY Pais.Id ORDER BY "Total de Casas Destruidas" DESC;