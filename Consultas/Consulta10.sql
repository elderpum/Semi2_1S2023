use practica1_semi2

SELECT Pais.Id, sum(Tsunami.Max_water_height)/count(Tsunami.Max_water_height) as "Altura Promedio del Agua" FROM Tsunami
INNER JOIN Pais ON Pais.Id = Tsunami.Id_pais
WHERE Tsunami.Max_water_height > 0 GROUP BY Pais.Id ORDER BY "Altura Promedio del Agua" DESC;