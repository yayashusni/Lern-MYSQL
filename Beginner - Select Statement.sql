SELECT * 
FROM karyawan;

SELECT nama_depan, 
nama_belakang, 
umur, 
jenis_kelamin
FROM karyawan;

SELECT * FROM gaji;

SELECT nama_depan,
nama_belakang,
gaji AS Gaji,
gaji+100 AS 'Gaji + $100'
FROM gaji;

SELECT nama_depan,
nama_belakang,
gaji AS Gaji,
(gaji + 100) * 10
FROM gaji;


SELECT dept_id
FROM gaji;

SELECT DISTINCT dept_id
FROM gaji;


