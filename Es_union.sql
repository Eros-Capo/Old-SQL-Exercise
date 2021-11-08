#unione due tabelle
SELECT d1.nome, d1.cognome, d1.stipendio
FROM dipendenti1 d1
UNION
SELECT d2.nome, d2.cognome, d2.stipendio
FROM dipendenti2 d2;

#dipendenti con lo stesso nome e cognome in due tabelle diverse
SELECT d1.nome, d1.cognome, d1.stipendio
FROM dipendenti1 d1
WHERE (d1.nome,d1.cognome) IN (SELECT d2.nome,d2.cognome
FROM dipendenti2 d2);

#dipendenti con il nome e cognome diverso in due tabelle
SELECT d1.nome, d1.cognome, d1.stipendio
FROM dipendenti1 d1
WHERE (d1.nome,d1.cognome) NOT IN (SELECT d2.nome,d2.cognome
FROM dipendenti2 d2);