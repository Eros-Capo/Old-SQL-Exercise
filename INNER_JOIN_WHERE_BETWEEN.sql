SELECT p.cognome,v.peso
FROM pazienti AS p
INNER JOIN visite AS v
ON p.ID_paziente=v.id_paziente
WHERE v.peso BETWEEN 60 AND 70 