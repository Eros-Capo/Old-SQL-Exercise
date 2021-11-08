SELECT AVG(o.Importo) AS Media,o.Data_ordine,o.Cliente
	FROM ordinativi o
		GROUP BY o.Cliente,o.Data_ordine