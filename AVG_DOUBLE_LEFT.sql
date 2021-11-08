SELECT AVG(d.reddito_complessivo) AS Media_reddito,c.codice_fiscale
	FROM contribuenti AS c 
		LEFT JOIN presentazioni AS p
			ON c.codice_fiscale=p.codice_fiscale
				LEFT JOIN dichiarazioni AS d
					ON d.ID_dichiarazione=p.id_dichiarazione
						WHERE c.regione LIKE 'lombardia'
							GROUP BY c.codice_fiscale