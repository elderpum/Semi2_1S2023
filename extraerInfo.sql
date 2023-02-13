use practica1_semi2

BULK INSERT 
	Temporal
From 
	'C:\Users\elder.DESKTOP-81GR7TM\Documents\USAC\Semi2\Lab\Repo\Practicas\Practica1\limpio_historial_tsumamis.csv'
WITH(
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	FIRSTROW = 2
);