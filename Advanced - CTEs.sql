-- Menggunakan Common Table Expression (CTE) untuk menghitung ringkasan gaji berdasarkan jenis kelamin
WITH CTE_Example AS 
(
SELECT jenis_kelamin, SUM(gaji), MIN(gaji), MAX(gaji), COUNT(gaji)
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
GROUP BY jenis_kelamin
)
-- Menggunakan CTE untuk menghitung rata-rata gaji per jenis kelamin dengan membulatkan hasil rata-rata hingga dua desimal
SELECT jenis_kelamin, ROUND(AVG(`SUM(gaji)`/`COUNT(gaji)`),2)
FROM CTE_Example
GROUP BY jenis_kelamin;



-- CTE pertama untuk memilih karyawan yang lahir setelah 1 Januari 1985
-- CTE kedua untuk memilih karyawan dengan gaji lebih dari atau sama dengan 50,000
WITH CTE_Example AS 
(
SELECT id_karyawan, jenis_kelamin, tanggal_lahir
FROM karyawan k
WHERE tanggal_lahir > '1985-01-01'
), 
CTE_Example2 AS 
(
SELECT id_karyawan, gaji
FROM gaji_karyawan
WHERE gaji >= 50000
)
-- Menggabungkan kedua CTE dengan LEFT JOIN berdasarkan id_karyawan
SELECT *
FROM CTE_Example cte1
LEFT JOIN CTE_Example2 cte2
	ON cte1. id_karyawan = cte2. id_karyawan;


-- mengganti nama kolom di CTE	
WITH CTE_Example (jenis_kelamin, sum_salary, min_salary, max_salary, count_salary) AS 
(
SELECT jenis_kelamin, SUM(gaji), MIN(gaji), MAX(gaji), COUNT(gaji)
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
GROUP BY jenis_kelamin
)

SELECT jenis_kelamin, ROUND(AVG(sum_salary/count_salary),2)
FROM CTE_Example
GROUP BY jenis_kelamin;