-- LIMIT and ALIASING

SELECT *
FROM karyawan 
LIMIT 4;

SELECT *
FROM karyawan 
ORDER BY nama_depan
LIMIT 4;

--  Mengambil Baris Mulai dari Posisi ke-3 dan 4 Baris Setelahnya
SELECT *
FROM karyawan 
ORDER BY nama_depan
LIMIT 3,4;

--  Mengambil atau mendapatkan orang ketiga dan keempat tertua.
SELECT *
FROM karyawan 
ORDER BY umur DESC
LIMIT 3,2;

-- ALIASING

SELECT jenis_kelamin, AVG(umur)
FROM karyawan
GROUP BY jenis_kelamin;

SELECT jenis_kelamin, AVG(umur) AS rata_rata
FROM karyawan
GROUP BY jenis_kelamin;

-- Menggunakan Alias Tanpa AS
SELECT jenis_kelamin, AVG(umur) rata_rata
FROM karyawan
GROUP BY jenis_kelamin;