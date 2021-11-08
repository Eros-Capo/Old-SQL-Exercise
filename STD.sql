#fatturato massimo, minimo, medio
SELECT MAX(Fatturato) AS fat_max, MIN(Fatturato) AS fat_min, AVG(Fatturato) as fat_med , STD(Fatturato) as fat_deviazione_standard
	FROM clienti;
