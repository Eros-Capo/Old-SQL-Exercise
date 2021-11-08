SELECT a.descrizione,f.numero
FROM articoli AS a
INNER JOIN unisci_fat_art AS u
ON a.ID_articolo=u.id_articolo
INNER JOIN fatture AS f
ON f.numero=u.id_fattura
WHERE f.numero=2