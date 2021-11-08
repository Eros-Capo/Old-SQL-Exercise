SELECT AVG(a.prezzoUnitario),u.id_articolo,c.ragione_sociale 
		FROM unisci_fat_art AS u
			LEFT JOIN fatture AS f
				ON f.numero=u.id_fattura
					LEFT JOIN articoli AS a 
						ON a.ID_articolo=u.id_articolo
							LEFT JOIN clienti AS c
								ON c.ID_cliente=f.id_cliente
									WHERE c.ragione_sociale LIKE 'nobis'
										GROUP BY c.ragione_sociale
											