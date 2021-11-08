ALTER TABLE prodotti
ADD CONSTRAINT chiave_esterna_fornitori
FOREIGN KEY (ID_fornitore)
REFERENCES fornitori(ID);