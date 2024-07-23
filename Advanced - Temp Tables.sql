-- Membuat dan Menggunakan Tabel Sementara Pertama
CREATE TEMPORARY TABLE tabel_sementara (
    nama_depan VARCHAR(50),
    nama_belakang VARCHAR(50),
    film_favorit VARCHAR(100)
);

INSERT INTO tabel_sementara (nama_depan, nama_belakang, film_favorit)
VALUES ('Yayas', 'Husni', 'Lord of the Rings: The Twin Towers');

SELECT *
FROM tabel_sementara;

-- Membuat dan Menggunakan Tabel Sementara Kedua dengan Kueri
CREATE TEMPORARY TABLE gaji_dibawag_50k AS
SELECT *
FROM gaji_karyawan
WHERE gaji > 50000;

SELECT *
FROM gaji_dibawag_50k;





























































