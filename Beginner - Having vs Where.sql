-- Kesalahan Menggunakan Klausa WHERE dengan Agregat
SELECT jenis_kelamin, AVG(umur) 
FROM karyawan
WHERE AVG(umur) > 40
GROUP BY jenis_kelamin;

-- Menggunakan Klausa HAVING dengan Agregat

SELECT jenis_kelamin, AVG(umur) 
FROM karyawan
GROUP BY jenis_kelamin
HAVING AVG(umur) > 40;

-- Menggunakan Alias dalam Klausa HAVING
SELECT jenis_kelamin, AVG(umur) AS avg_umur
FROM karyawan
GROUP BY jenis_kelamin
HAVING avg_umur > 40;