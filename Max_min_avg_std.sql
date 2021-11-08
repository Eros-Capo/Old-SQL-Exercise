#Max min avg std
SELECT MAX(Fatturato) AS 'fatt_max',	
		 MIN(Fatturato) AS 'fatt_min',
		 AVG(Fatturato) AS 'fatt_avg',
		 STD(Fatturato) AS 'fatt_std'
		 FROM clienti;