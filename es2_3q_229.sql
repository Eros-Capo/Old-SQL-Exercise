SELECT p.cognome,(v.pressioneMin-v.pressioneMax) AS differenza
FROM pazienti AS p
INNER JOIN visite AS v
ON p.ID_paziente=v.id_paziente
WHERE (v.pressioneMin-v.pressioneMax)<40