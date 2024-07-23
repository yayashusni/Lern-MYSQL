-- memangkas sisi kiri 
SELECT LTRIM('     I love SQL');

-- memangkas sisi kanan 
SELECT RTRIM('I love SQL    ');

-- memungkinkan kita mengambil sejumlah string dari sisi kiri
SELECT nama_depan, LEFT(nama_depan, 4)
FROM karyawan;

-- memungkinkan kita mengambil sejumlah string dari sisi kanan
SELECT nama_depan, RIGHT(nama_depan, 4)
FROM karyawan;

-- memungkinkan menggabungkan 2 kolom menjadi satu
SELECT CONCAT('Alex', 'Freberg');

SELECT CONCAT(nama_depan, ' ' , nama_belakang) as Nama_Lengkap
FROM karyawan;