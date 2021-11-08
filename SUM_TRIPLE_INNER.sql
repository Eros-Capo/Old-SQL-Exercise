SELECT SUM(u.`quantità`) AS Conteggio_Venduti ,c.ragione_sociale
		FROM unisci_fat_art AS u
			INNER JOIN fatture AS f
				ON f.numero=u.id_fattura
					INNER JOIN articoli AS a 
						ON a.ID_articolo=u.id_articolo
							INNER JOIN clienti AS c
								ON c.ID_cliente=f.id_cliente
									GROUP BY c.ragione_sociale										


		