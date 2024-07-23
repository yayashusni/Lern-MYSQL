-- Window Functions

-- Menghitung Rata-rata Gaji Seluruh Karyawan

SELECT k.id_karyawan, k.nama_depan, jenis_kelamin, gaji,
AVG(gaji) OVER()
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
;

-- Menghitung Rata-rata Gaji Berdasarkan Jenis Kelamin

SELECT k.id_karyawan, k.nama_depan, jenis_kelamin, gaji,
AVG(gaji) OVER(PARTITION BY jenis_kelamin)
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
;

-- Menghitung Jumlah Bergulir Gaji Berdasarkan Jenis Kelamin dan Urutan ID Karyawan
SELECT k.id_karyawan, k.nama_depan, jenis_kelamin, gaji,
SUM(gaji) OVER(PARTITION BY jenis_kelamin ORDER BY id_karyawan)
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
;

-- Menampilkan Nomor Baris Berdasarkan Jenis Kelamin
SELECT k.id_karyawan, k.nama_depan, jenis_kelamin, gaji,
ROW_NUMBER() OVER(PARTITION BY jenis_kelamin)
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
;

-- Menampilkan Nomor Baris Berdasarkan Jenis Kelamin dan Urutan Gaji
SELECT k.id_karyawan, k.nama_depan, jenis_kelamin, gaji,
ROW_NUMBER() OVER(PARTITION BY jenis_kelamin ORDER BY gaji desc)
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
;

-- Membandingkan Nomor Baris dan Peringkat
SELECT k.id_karyawan, k.nama_depan, jenis_kelamin, gaji,
ROW_NUMBER() OVER(PARTITION BY jenis_kelamin ORDER BY gaji desc) row_num,
Rank() OVER(PARTITION BY jenis_kelamin ORDER BY gaji desc) rank_1 
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
;

-- Membandingkan Nomor Baris, Peringkat, dan Peringkat Padat
SELECT k.id_karyawan, k.nama_depan, jenis_kelamin, gaji,
ROW_NUMBER() OVER(PARTITION BY jenis_kelamin ORDER BY gaji desc) row_num,
Rank() OVER(PARTITION BY jenis_kelamin ORDER BY gaji desc) rank_1,
dense_rank() OVER(PARTITION BY jenis_kelamin ORDER BY gaji desc) dense_rank_2 
FROM karyawan k
JOIN gaji_karyawan gk
	ON k.id_karyawan = gk.id_karyawan
;

















