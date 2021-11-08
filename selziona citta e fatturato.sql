SELECT RagioneSociale,Fatturato FROM clienti
WHERE Fatturato >= 100000 AND Fatturato <= 150000 OR Citta LIKE "Milano";