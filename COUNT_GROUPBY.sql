SELECT COUNT(o.Cliente) AS Conteggio_Ordini,o.Cliente
	FROM ordinativi o
		GROUP BY o.Cliente