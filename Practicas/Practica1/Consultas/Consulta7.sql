use practica1_semi2

SELECT DISTINCT TOP (5) f.Year, COUNT(*) "Total de Tsunamis"
FROM Tsunami t
INNER JOIN Fecha f ON f.id = t.Id_fecha
GROUP BY f.Year
ORDER BY "Total de Tsunamis" DESC;