SELECT f.*
FROM fatture AS f
INNER JOIN unisci_fat_art AS u
ON f.numero=u.id_fattura
WHERE f.cliente="rossi"