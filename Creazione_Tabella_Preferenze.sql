CREATE TABLE IF NOT EXISTS preferenze(
	ID_preferenza INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_visualizzazione INT,
	id_utente INT,
	like_economia INT,
	like_politica INT,
	like_attualita INT,
	like_sport INT,
	like_spettacolo INT,
	like_scienza INT
);