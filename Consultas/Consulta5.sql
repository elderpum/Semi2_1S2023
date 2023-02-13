use practica1_semi2

SELECT DISTINCT TOP (5) Pais.Id, sum(Tsunami.Total_deaths) as "Total de Muertes" FROM Tsunami 
INNER JOIN pais ON pais.id = tsunami.id_pais
GROUP BY Pais.Id ORDER BY "Total de Muertes" DESC;