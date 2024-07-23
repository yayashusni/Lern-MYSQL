-- Inner Join
SELECT *
FROM karyawan k
INNER JOIN gaji_karyawan gk
    ON k.id_karyawan = gk.id_karyawan;

-- Left Join
SELECT *
FROM karyawan k
LEFT JOIN gaji_karyawan gk
    ON k.id_karyawan = gk.id_karyawan;

-- Right Join
SELECT *
FROM karyawan k
RIGHT JOIN gaji_karyawan gk
    ON k.id_karyawan = gk.id_karyawan;

-- Self Join
SELECT *
FROM gaji_karyawan k1
JOIN gaji_karyawan k2
    ON k1.id_karyawan = k2.id_karyawan;

-- Self Join with Condition
SELECT *
FROM gaji_karyawan k1
JOIN gaji_karyawan k2
    ON k1.id_karyawan + 1 = k2.id_karyawan;

-- Multiple Joins
SELECT *
FROM karyawan k
INNER JOIN gaji_karyawan gk
    ON k.id_karyawan = gk.id_karyawan
JOIN departemen d
    ON d.id_departemen = gk.dept_id;

-- Multiple Joins with Left Join
SELECT *
FROM karyawan k
INNER JOIN gaji_karyawan gk
    ON k.id_karyawan = gk.id_karyawan
LEFT JOIN departemen d
    ON d.id_departemen = gk.dept_id;
