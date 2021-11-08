SELECT v.dataVisita, p.cognome, v.peso
FROM visite AS v
LEFT JOIN pazienti AS p
ON p.ID_paziente=v.id_paziente