SELECT MAX(o.Importo) AS Importo_Massimo, o.Evaso
	FROM ordinativi AS o
		GROUP BY o.Evaso