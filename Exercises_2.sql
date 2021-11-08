# Per ogni città (in ordine di importanza economica)
# visualizzare il fatturato totale

SELECT Citta, SUM(Fatturato) as totale
  FROM clienti
    GROUP BY Citta
      ORDER BY totale DESC;




# Per ogni città visualizzare il fatturato totale
# (in ordine decrescente) maggiore di 100000
# ed il relativo numero di clienti 
SELECT Citta, SUM(Fatturato) as totale, COUNT(*) as numero_clienti
 	FROM clienti
		WHERE clienti.Fatturato>50000
 			GROUP BY Citta
 				HAVING totale > 100000
	 				ORDER BY totale DESC
						LIMIT 3;

# Visualizzare le città che iniziano per M
SELECT DISTINCT(c.Citta)
	FROM clienti c
		WHERE c.Citta LIKE 'M%';

# visualizzare le città che hanno solo quattro lettere

SELECT DISTINCT(c.Citta)
	FROM clienti c
		WHERE c.Citta LIKE '____';

# visualizzare i clienti di Milano

SELECT RagioneSociale
		FROM clienti
			WHERE Citta = 'Milano'; # oppure LIKE

# visualizzare i clienti che hanno un fatturato compreso tra 50000 e 1000000
SELECT RagioneSociale, Fatturato
	FROM clienti
		WHERE Fatturato BETWEEN 64110 AND 100000 #estremi inclusi
				ORDER BY Fatturato DESC;