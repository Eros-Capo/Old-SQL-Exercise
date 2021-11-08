#Visualizzare i clienti dei rappresentanti (INNER JOIN)
SELECT
  r.CodiceRappr AS chiave_primaria, r.CognomeNome AS Rappresentante ,
  c.CodiceRappresentante AS chiave_esterna, c.RagioneSociale AS Cliente
FROM clienti AS c,rappresentanti AS r
WHERE c.CodiceRappresentante=r.CodiceRappr;

#Visualizzare i clienti dei rappresentanti (INNER JOIN)

SELECT
  r.CodiceRappr AS chiave_primaria, r.CognomeNome AS Rappresentante ,
  c.CodiceRappresentante AS chiave_esterna, c.RagioneSociale AS Cliente, c.Fatturato
FROM clienti AS c INNER JOIN rappresentanti AS r
    ON c.CodiceRappresentante=r.CodiceRappr
        ORDER BY r.CognomeNome;

# visualizzare quanti clienti ha ogni rappresentante

SELECT r.CognomeNome, COUNT(c.CodiceCliente) as numero_clienti
  FROM rappresentanti r INNER JOIN clienti c
    ON r.CodiceRappr = c.CodiceRappresentante
      GROUP BY r.CognomeNome
        ORDER BY numero_clienti DESC, r.CognomeNome;


# visualizzare i clienti dei rappresentanti
# che stanno nella stessa città
SELECT
  r.CodiceRappr AS chiave_primaria, r.CognomeNome AS Rappresentante , r.Citta,
  c.CodiceRappresentante AS chiave_esterna, c.RagioneSociale AS Cliente, c.Citta
FROM clienti AS c INNER JOIN rappresentanti AS r
    ON c.CodiceRappresentante=r.CodiceRappr
WHERE c.Citta=r.Citta
ORDER BY Rappresentante;

#i rappresentanti e i clienti (non necessariamente i propri)
#che stanno nella stessa città
SELECT r.CodiceRappr AS chiave_primaria, r.CognomeNome AS Rappresentante , r.Citta,
       c.CodiceRappresentante AS chiave_esterna, c.RagioneSociale AS Cliente, c.Citta
FROM clienti c, rappresentanti r
WHERE c.Citta=r.Citta
ORDER BY r.Citta;


# i rappresentanti e i clienti (non i propri)
# che stanno nella stessa città
SELECT
  r.CodiceRappr AS chiave_primaria, r.CognomeNome AS Rappresentante , r.Citta,
  c.CodiceRappresentante AS chiave_esterna, c.RagioneSociale AS Cliente, c.Citta
FROM clienti AS c , rappresentanti AS r
WHERE c.CodiceRappresentante!=r.CodiceRappr AND c.Citta=r.Citta
ORDER BY Rappresentante;

# Prodotto Cartesiano (FULL JOIN)
SELECT
  r.CodiceRappr AS chiave_primaria, r.CognomeNome AS Rappresentante ,
  c.CodiceRappresentante AS chiave_esterna, c.RagioneSociale AS Cliente
FROM clienti AS c,rappresentanti AS r;

#Visualizzare per ogni rappresentante
# (ordinati alfabeticamente) il numero di clienti

SELECT  r.CognomeNome, COUNT(*) AS numero_clienti
FROM clienti c INNER JOIN
  rappresentanti r ON c.CodiceRappresentante=r.CodiceRappr
GROUP BY r.CodiceRappr
ORDER BY r.CognomeNome;

# Visualizzare per ogni città (in ordine decrescente di fatturato)
# il fatturato totale dei clienti

SELECT c.Citta, SUM(c.Fatturato) AS totale_fatturato
FROM clienti c
GROUP BY c.Citta
ORDER BY totale_fatturato DESC;

# Visualizzare il rappresentante
# che ha il cliente con il maggior fatturato

SELECT r.CognomeNome, c.Fatturato
FROM clienti c INNER JOIN rappresentanti r
    ON c.CodiceRappresentante = r.CodiceRappr
WHERE c.Fatturato=( SELECT MAX(c.Fatturato) as Fatturato_massimo_cliente
                    FROM clienti c );

SELECT r.CognomeNome , c.Fatturato
FROM clienti c INNER  JOIN rappresentanti r
    ON c.CodiceRappresentante = r.CodiceRappr
ORDER BY c.Fatturato DESC
LIMIT 1;
