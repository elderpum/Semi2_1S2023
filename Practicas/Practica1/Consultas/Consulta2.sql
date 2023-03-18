use practica1_semi2

SELECT Fecha.Year, count(Tsunami.Id) as Tsunamis FROM Fecha
INNER JOIN Tsunami ON Fecha.Id = Tsunami.Id_fecha
GROUP BY Fecha.Year
ORDER BY Fecha.Year DESC;