-- Subquery dalam SELECT Clause 
SELECT 
nama_depan, 
gaji, 
	(SELECT(avg(gaji)) FROM gaji_karyawan) AS rata_rata_gaji
FROM gaji_karyawan
GROUP BY nama_depan, gaji;


-- Agregasi dengan Subquery
SELECT umur, AVG(Min_age)
FROM (SELECT umur, 
      MIN(umur) Min_age, 
      MAX(umur) Max_age, 
      COUNT(umur) Count_age ,
      AVG(umur) Avg_age
      FROM karyawan
      GROUP BY umur) AS Tabel_umur
GROUP BY umur;
