-- Menggunakan Klausa CASE untuk Kategori Umur
SELECT nama_depan,
nama_belakang,
CASE 
    WHEN umur <= 30 THEN 'young'
    WHEN umur BETWEEN 31 AND 50 THEN 'old'
    ELSE 'on death''s door'
END AS age_category
FROM karyawan;

-- Menggunakan Klausa CASE untuk Menentukan Kenaikan Gaji dan Bonus
SELECT nama_depan, nama_belakang, gaji,
CASE 
    WHEN gaji < 45000 THEN gaji + (gaji * 0.05)
    WHEN gaji >= 45000 THEN gaji + (gaji * 0.07)
END AS Gaji_Baru,
CASE 
    WHEN dept_id = 6 THEN gaji * 0.10
    ELSE 0
END AS bonus
FROM gaji_karyawan
JOIN karyawan ON karyawan.id_karyawan = gaji_karyawan.id_karyawan;
