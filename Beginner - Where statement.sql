SELECT * FROM gaji;

SELECT *
FROM gaji_karyawan 
WHERE gaji > 50000;

SELECT *
FROM gaji_karyawan
WHERE gaji >= 50000;

SELECT *
FROM karyawan 
WHERE jenis_kelamin = 'Female';

SELECT *
FROM karyawan 
WHERE jenis_kelamin != 'Female';

SELECT * 
FROM karyawan 
WHERE tanggal_lahir > '1985-01-01';

SELECT * 
FROM karyawan
WHERE nama_depan LIKE 'a%';

SELECT * 
FROM karyawan
WHERE nama_depan LIKE 'a__';

SELECT * 
FROM karyawan
WHERE nama_depan LIKE 'a___%';
