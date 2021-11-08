SELECT f.`data`,f.numero 
FROM fatture AS f 
INNER JOIN unisci_fat_art AS u
ON f.numero=u.id_fattura
INNER JOIN articoli AS a 
ON a.ID_articolo=u.id_articolo
GROUP BY a.ID_articolo