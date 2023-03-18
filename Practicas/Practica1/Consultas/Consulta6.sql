use practica1_semi2

SELECT DISTINCT TOP (5) f.Year, sum(t.Total_deaths) as "Total Muertes por A�o" FROM Tsunami t
INNER JOIN fecha f ON f.Id = t.Id_fecha
GROUP BY f.Year ORDER BY "Total Muertes por A�o" DESC;