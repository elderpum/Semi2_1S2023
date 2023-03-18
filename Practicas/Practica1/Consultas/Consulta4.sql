use practica1_semi2

SELECT DISTINCT Pais.Id, sum(Tsunami.Total_damage)/count(Tsunami.Total_damage) as Promedio_Damage FROM tsunami
INNER JOIN Pais ON Pais.Id = Tsunami.Id_pais
WHERE Tsunami.total_damage > 0 GROUP BY pais.id ORDER BY Promedio_Damage DESC;