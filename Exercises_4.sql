#modifica la tabella proiezioni aggiungendo una chiave esterna di CodFilm
#che viene chiamata fk_film e fa riferimento alla chiave prima CodFilm della tabella film
#es.vari

ALTER TABLE proiezioni
    ADD CONSTRAINT fk_film
  FOREIGN KEY (CodFilm)
  REFERENCES film(CodFilm);

ALTER TABLE proiezioni
  ADD CONSTRAINT fk_sale
  FOREIGN KEY (CodSala)
REFERENCES sale(CodSala);

ALTER TABLE recita
  ADD CONSTRAINT fk_film2
  FOREIGN KEY (CodFilm)
REFERENCES film(CodFilm);

ALTER TABLE recita
  ADD CONSTRAINT fk_attore
  FOREIGN KEY (CodAttore)
REFERENCES attori(CodAttore);

#elimina la chiave esterna poiezioni_ibfk_1
ALTER TABLE recita
    DROP FOREIGN KEY proiezioni_ibfk_1

#modifica la tabella, aggiunge il campo num_premi
ALTER TABLE attori
    ADD num_premi INT(5);

#se aggiorno(update) o se cancello(delete) qualcosa dalla tabella
#va ad eseguire uno dei 4 parametri mostrati ovvero quello inserito
#RESTRICT e NO ACTION non fanno nulla è come non metterli
#CASCADE= se la chiave primaria viene modificata di conseguenza viene modificata anche la
#chiave esterna
#SET NULL= se la chiave primaria viene modificata la chiave esterna diventa nulla

ON DELETE
ON UPDATE

CASCADE | SET NULL | RESTRICT | NO ACTION

#es.
ALTER TABLE recita
ADD FOREIGN KEY (CodFilm)
REFERENCES film(CodFilm)
ON UPDATE CASCADE

#es.
ALTER TABLE proiezioni
  ADD CONSTRAINT fk_sale
FOREIGN KEY (CodSala)
REFERENCES sale(CodSala)
ON UPDATE CASCADE ON DELETE CASCADE