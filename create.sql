CREATE TABLE libri_posseduti(
	ID INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	titolo VARCHAR(200),
	autore VARCHAR(100),
	anno_publicazione DATE,
	genere VARCHAR(100),
	lingua VARCHAR(150),
	edizione ENUM('1','2','3','4','5'),
	rilegatura VARCHAR(200),
	editore VARCHAR(200),
	volume ENUM('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'),
	pagine INT(10)
)