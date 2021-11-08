SELECT biblioteca.libri_da_acquistare.* , prezzo+spedizione AS costo
FROM libri_da_acquistare 
ORDER BY costo
