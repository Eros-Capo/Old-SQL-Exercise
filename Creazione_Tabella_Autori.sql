CREATE TABLE IF NOT EXISTS autori(
	ID_autore INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(30) NOT NULL,
	email VARCHAR(190) NOT NULL,
	nome VARCHAR(50),
	cognome VARCHAR(50),
	data_nascita DATETIME NOT NULL,
	data_creazione DATETIME  DEFAULT NOW(),
	sesso ENUM('M','F')
);