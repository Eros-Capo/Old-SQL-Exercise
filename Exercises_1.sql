#es.1
SELECT Nome
FROM Sale
WHERE Città like 'Pisa';

#es.2
SELECT Titolo, annoproduzione
FROM film
WHERE Regista like 'Fellini'
      AND AnnoProduzione>1960;

#es.3
SELECT Titolo,Durata
FROM film
WHERE Genere like 'Fantascienza'
      AND AnnoProduzione>1990
      AND Nazionalità like 'Francese'
      OR Nazionalità like 'Giapponese';

#es.4
SELECT Titolo
FROM film
WHERE Genere='Fantascienza'
      AND AnnoProduzione>1990
      AND Nazionalità='Francese'
      OR Nazionalità='Giapponese';

#es.5
SELECT Titolo
FROM film
WHERE Regista=(SELECT Regista
               FROM film
               WHERE Titolo LIKE 'Casablanca');

#es.6
SELECT f.Titolo, f.Genere
FROM film f, proiezioni p
WHERE p.DataProiezione='2004-12-25';

#es.7
SELECT f.Titolo, f.Genere
FROM film f, proiezioni p
  INNER JOIN sale s
    ON p.CodSala=s.CodSala
WHERE p.DataProiezione='2004-12-25';

#es.8
SELECT s.Nome
FROM attori a, sale s
  INNER JOIN proiezioni p
    ON s.CodSala=p.CodSala
WHERE s.Città='Napoli'
      AND p.DataProiezione='2004-12-25'
      AND a.Nome='R.Williams';

#es.9
SELECT count(f.CodFilm),A.Nome
FROM film f
  INNER JOIN recita r
    on r.codfilm=f.codfilm
  inner join attori a
    on r.codattore=a.codattore
where a.nome like 'm.mastroianni'
      or a.nome like's.loren'
group by a.nome;

#es.10
SELECT f.Titolo
FROM film f
  INNER JOIN attori a
    ON f.CodAttore=a.CodAttore
WHERE a.Nome='M.Mastroianni'
      AND a.Nome='S.Loren';

#es.11
SELECT f.Titolo, a.Nome
FROM film f
  INNER JOIN attori a
    ON f.CodAttore=a.CodAttore
WHERE a.Nazionalità="Francese";

#es.12
SELECT s.Nome, f.Titolo
FROM film f, sale s
  INNER JOIN proiezioni p
    ON s.CodSala=p.CodSala
WHERE s.Città="Pisa"
      AND p.DataProiezione>="2005-1-1"
      OR p.DataProiezione<="2005-12-31";

#es.13
SELECT count(CodSala) AS NSale, Nome
FROM sale
WHERE Posti>60
      AND Città="Pisa";

#es.14
SELECT count(Posti) AS TotPosti
FROM sale
WHERE Città="Pisa";

#es.15
SELECT DISTINCT Città ,count(Città) AS NSale
FROM sale;

#es.16
SELECT count(Città) AS NSale
FROM sale
WHERE Posti>60
ORDER BY Città;

#es.17
SELECT count(CodFilm) AS NFilm
FROM film
ORDER BY Regista;

#es.18
SELECT p.sum(Incasso)
FROM proiezioni p
  INNER JOIN film f
    ON f.CodFilm=p.CodFilm
ORDER BY f.Regista;

#es.19
SELECT p.sum(Incasso), f.Titolo, count(Città="Pisa")
FROM sale s ,proiezioni p
  INNER JOIN film f
    ON f.CodFilm=p.CodFilm
WHERE f.Regista="S.Spielberg";

#es.21
SELECT f.Titolo, f.Regista
  FROM film f
    WHERE f.CodFilm =
(SELECT r.CodFilm
FROM recita r INNER JOIN attori a
ON r.CodAttore = a.CodAttore
GROUP BY r.CodFilm
HAVING count(a.CodAttore)<6);

#es.22
SELECT f.CodFilm, f.Titolo, sum(p.Incasso)
FROM proiezioni p, film f
WHERE p.DataProiezione>="2000-1-1"
      OR p.DataProiezione<="2000-12-31"
ORDER BY f.Titolo;

#es.23
SELECT count(CodAttore)
FROM attori
WHERE AnnoNascita<1970;

#es.24
SELECT f.Titolo, p.Incasso
FROM film f
  INNER JOIN proiezioni p
    ON f.CodFilm=p.CodFilm
WHERE f.Genere="Fantascienza"
ORDER BY f.Titolo;

#es.25
SELECT f.Titolo, p.Incasso
FROM film f
  INNER JOIN proiezioni p
    ON f.CodFilm=p.CodFilm
WHERE f.Genere="Fantascienza"
      AND p.DataProiezione>"2001-1-1"
ORDER BY f.Titolo;

#es.26
SELECT f.Titolo, p.Incasso
FROM film f
  INNER JOIN proiezioni p
    ON f.CodFilm=p.CodFilm
WHERE f.Genere="Fantascienza"
      AND p.DataProiezione>"2001-1-1"
ORDER BY f.Titolo;

#es.27
SELECT s.Nome, sum(p.Incasso)
FROM sale s
  INNER JOIN proiezioni p
    ON p.CodSala=s.CodSala
WHERE s.Città="Pisa"
      AND p.DataProiezione>="2005-01-01"
      OR p.DataProiezione<="2005-01-31";

#es.28
SELECT f.Titolo
FROM film f
  INNER JOIN proiezioni p
    ON f.CodFilm=p.CodFilm
  INNER JOIN sale s
    ON p.CodSala=s.CodSala
WHERE NOT s.Città="Pisa";

#es.29
SELECT f.Titolo
FROM film f
  INNER JOIN proiezioni p
    ON f.CodFilm=p.CodFilm
  INNER JOIN sale s
    ON p.CodSala=s.CodSala
WHERE s.Città="Pisa";

#es.30
SELECT f.Titolo
FROM film f
  INNER JOIN proiezioni p
    ON f.CodFilm=p.CodFilm
WHERE p.Incasso<500;

#es.31
SELECT f.Titolo
FROM film f
  INNER JOIN proiezioni p
    ON f.CodFilm=p.CodFilm
WHERE p.Incasso>500;

#es.32
SELECT a.Nome
FROM attori a
  INNER JOIN film f
    ON a.CodAttore=f.CodAttore
WHERE NOT f.Regista="Fellini";

#es.33
SELECT a.Nome
FROM attori a
  INNER JOIN film f
    ON a.CodAttore=f.CodAttore
WHERE f.Regista="Fellini"
      AND NOT a.Nazionalità="Italia";

#es.34
SELECT Titolo
FROM film
WHERE CodAttore=NULL;

#es.35
SELECT a.Nome
FROM attori a
  INNER JOIN film f
    ON a.CodAttore=f.CodAttore
WHERE f.Regista="Fellini"
      AND f.AnnoProduzione<1960;

#es.36
SELECT a.Nome
FROM attori a
  INNER JOIN film f
    ON a.CodAttore=f.CodAttore
WHERE f.Regista="Fellini"
      AND f.AnnoProduzione<1960;

#visualizzare il numero di sale per ogni citta dove i posti sono piu di mille
SELECT count(CodSala) AS NSale, `CittÃ `, sum(Posti) AS NPosti
FROM sale
GROUP BY `CittÃ `
HAVING NPosti>1000;

SELECT F.Regista, SUM(P.Incasso) AS IncassoTotale
FROM proiezioni p
INNER JOIN film f
    ON f.CodFilm=p.CodFilm
GROUP BY f.Regista
ORDER BY IncassoTotale DESC ;

#la proiezione che ha incassato di piu

SELECT Titolo
FROM proiezioni
WHERE Incasso = (SELECT max(Incasso)FROM proiezioni);
