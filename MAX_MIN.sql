SELECT MAX(o.Importo) AS Massimo,MIN(o.Importo) AS Minimo, MAX(o.Importo)/MIN(o.Importo) AS Rapporto
	FROM ordinativi o
		WHERE o.Importo<100
			GROUP BY o.Cliente