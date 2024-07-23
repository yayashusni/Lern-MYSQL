--  penggunaan DELIMITER untuk membuat dan menggunakan trigger dalam MySQL
DELIMITER $$
CREATE TRIGGER input_karyawan2
	AFTER INSERT ON gaji_karyawan
    FOR EACH ROW
BEGIN
    INSERT INTO karyawan (id_karyawan, nama_depan, nama_belakang) VALUES (NEW.id_karyawan,NEW.nama_depan,NEW.nama_belakang);
END $$
DELIMITER ; 

INSERT INTO gaji_karyawan (id_karyawan, nama_depan, nama_belakang, pekerjaan, gaji, dept_id)
VALUES(13, 'Yayas', 'Husni', 'Entertainment 720 CEO', 1000000, NULL);

DELETE FROM gaji_karyawan
WHERE id_karyawan = 13;

-- pembuatan dan penggunaan EVENT di MySQL untuk melakukan penghapusan data secara otomatis.
SHOW EVENTS;

DROP EVENT IF EXISTS hapus_pensiun;
DELIMITER $$
CREATE EVENT hapus_pensiun
ON SCHEDULE EVERY 30 SECOND
DO BEGIN
	DELETE
	FROM taman_rekreasi.karyawan
    WHERE umur >= 60;
END $$

SELECT * 
FROM taman_rekreasi.karyawan;