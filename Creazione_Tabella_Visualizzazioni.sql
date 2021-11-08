CREATE TABLE IF NOT EXISTS visualizzazioni(
	ID_visualizzazione INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_notizia INT,
	id_utente INT,
	like_genere ENUM('1','0')
);