SELECT jenis_kelamin 
FROM karyawan
GROUP BY jenis_kelamin;

SELECT pekerjaan
FROM gaji_karyawan
GROUP BY pekerjaan;

SELECT pekerjaan, gaji
FROM gaji_karyawan
GROUP BY pekerjaan, gaji
;

SELECT jenis_kelamin, avg(umur) 
FROM karyawan
GROUP BY jenis_kelamin;

SELECT jenis_kelamin, avg(umur), min(umur), max(umur), count(umur)   
FROM karyawan
GROUP BY jenis_kelamin;

SELECT * FROM karyawan;

SELECT * 
FROM karyawan
ORDER BY nama_depan;

SELECT * 
FROM karyawan
ORDER BY nama_depan DESC;

SELECT * 
FROM karyawan
ORDER BY jenis_kelamin, umur;

SELECT * 
FROM karyawan
ORDER BY jenis_kelamin DESC, umur DESC;