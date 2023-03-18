use practica1_semi2

SELECT d.Id,
    STUFF((SELECT DISTINCT ',' + CAST(c.Year AS VARCHAR)
	FROM Tsunami a
	INNER JOIN Pais b ON b.id = a.id_pais
	INNER JOIN fecha c ON c.id = a.id_fecha
	WHERE d.Id = b.Id
	FOR XML PATH('')), 1, 1, '') Años
FROM Pais d GROUP BY d.Id ORDER BY d.Id DESC;