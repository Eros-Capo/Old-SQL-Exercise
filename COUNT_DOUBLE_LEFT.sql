SELECT COUNT(d.ID_dichiarazione),c.codice_fiscale
	FROM contribuenti AS c 
		LEFT JOIN presentazioni AS p
			ON c.codice_fiscale=p.codice_fiscale
				LEFT JOIN dichiarazioni AS d
					ON d.ID_dichiarazione=p.id_dichiarazione
						WHERE d.tipo LIKE 'unico'
							GROUP BY c.codice_fiscale
							