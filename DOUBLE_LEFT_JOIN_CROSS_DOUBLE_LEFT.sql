SELECT MIN(it.somma) AS Reddito_complessivo_minore
	FROM contribuenti AS co 
		LEFT JOIN presentazioni AS pr
			ON co.codice_fiscale=pr.codice_fiscale
				LEFT JOIN dichiarazioni AS di
					ON di.ID_dichiarazione=pr.id_dichiarazione
						CROSS JOIN
							(SELECT SUM(di.reddito_complessivo) AS somma
								FROM contribuenti AS co 
									LEFT JOIN presentazioni AS pr
										ON co.codice_fiscale=pr.codice_fiscale
											LEFT JOIN dichiarazioni AS di
												ON di.ID_dichiarazione=pr.id_dichiarazione
													GROUP BY pr.anno) AS it