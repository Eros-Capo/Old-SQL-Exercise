CREATE TABLE IF NOT EXISTS notizie(
	ID_notizia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	titolo VARCHAR(30) NOT NULL,
	corpo_notizia TEXT NOT NULL,
	like_notizia INT,
	genere_notizia VARCHAR(50),
	data_creazione DATETIME DEFAULT NOW(),
	id_autore INT
);