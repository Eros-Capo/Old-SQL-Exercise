SELECT MAX(o.Importo) AS Importo_Massimo, MIN(o.Importo) AS Importo_Minimo,o.Data_ordine
	FROM ordinativi AS o
			GROUP BY o.Data_ordine 
				HAVING MIN(o.Importo)>20