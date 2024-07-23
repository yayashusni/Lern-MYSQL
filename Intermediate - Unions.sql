-- UNION
SELECT nama_depan , nama_belakang
FROM karyawan
UNION
SELECT nama_depan, nama_belakang
FROM gaji_karyawan;

-- UNION DISTINCT

SELECT nama_depan , nama_belakang
FROM karyawan
UNION DISTINCT
SELECT nama_depan, nama_belakang
FROM gaji_karyawan;

-- UNION ALL
SELECT nama_depan , nama_belakang
FROM karyawan
UNION ALL
SELECT nama_depan, nama_belakang
FROM gaji_karyawan;

-- Memotong anggaran dengan mengidentifikasi karyawan yang lebih tua yang dapat dikeluarkan atau karyawan dengan gaji tinggi yang dapat dikurangi gajinya atau dikeluarkan.

SELECT nama_depan, nama_belakang, 'Pria Tua' AS Label
FROM karyawan
WHERE umur > 50 AND jenis_kelamin = 'Male'
UNION
SELECT nama_depan, nama_belakang, 'Wanita Tua'
FROM karyawan
WHERE umur > 40 AND jenis_kelamin = 'Female'
UNION 
SELECT nama_depan, nama_belakang, 'Gaji Karyawan Tertinggi'
FROM gaji_karyawan
WHERE gaji >= 70000
ORDER BY nama_depan;
