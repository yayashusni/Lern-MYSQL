-- Stored Procedure Tanpa Parameter
DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM gaji_karyawan
	WHERE gaji >= 60000;
	SELECT *
	FROM gaji_karyawan
	WHERE gaji >= 50000;
END $$
DELIMITER ;
CALL large_salaries3()


-- Stored Procedure dengan Parameter
DROP procedure IF EXISTS large_salaries3;

DELIMITER $$
CREATE PROCEDURE large_salaries3(id_karyawan_parameter INT)
BEGIN
	SELECT *
	FROM gaji_karyawan
	WHERE gaji >= 60000
    AND id_karyawan_parameter = id_karyawan;
END $$
DELIMITER ;

CALL large_salaries3(1);