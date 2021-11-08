SELECT a.*
FROM articoli a, fatture f, unisci_fat_art u
WHERE f.numero=u.id_fattura  AND f.cliente="rossi" OR f.cliente="gialli"