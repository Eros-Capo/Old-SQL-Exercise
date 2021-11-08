SELECT f.*
FROM fatture AS f ,unisci_fat_art AS u
WHERE f.numero=u.id_fattura AND u.`quantità`>=10