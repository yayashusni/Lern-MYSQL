DROP DATABASE IF EXISTS taman_rekreasi;
CREATE DATABASE taman_rekreasi;
USE taman_rekreasi;

CREATE TABLE karyawan (
  id_karyawan INT NOT NULL,
  nama_depan VARCHAR(50),
  nama_belakang VARCHAR(50),
  umur INT,
  jenis_kelamin VARCHAR(10),
  tanggal_lahir DATE,
  PRIMARY KEY (id_karyawan)
);

CREATE TABLE Gaji_karyawan (
  id_karyawan INT NOT NULL,
  nama_depan VARCHAR(50) NOT NULL,
  nama_belakang VARCHAR(50) NOT NULL,
  pekerjaan VARCHAR(50),
  gaji INT,
  dept_id INT
);


INSERT INTO karyawan (id_karyawan, nama_depan, nama_belakang, umur, jenis_kelamin, tanggal_lahir)
VALUES
(1,'Leslie', 'Knope', 44, 'Female','1979-09-25'),
(3,'Tom', 'Haverford', 36, 'Male', '1987-03-04'),
(4, 'April', 'Ludgate', 29, 'Female', '1994-03-27'),
(5, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28'),
(6, 'Donna', 'Meagle', 46, 'Female', '1977-07-30'),
(7, 'Ann', 'Perkins', 35, 'Female', '1988-12-01'),
(8, 'Chris', 'Traeger', 43, 'Male', '1980-11-11'),
(9, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26'),
(10, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25'),
(11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14'),
(12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');


INSERT INTO Gaji_karyawan (id_karyawan, nama_depan, nama_belakang, occupation, gaji, dept_id)
VALUES
(1, 'Leslie', 'Knope', 'Deputy Director of Parks and Recreation', 75000,1),
(2, 'Ron', 'Swanson', 'Director of Parks and Recreation', 70000,1),
(3, 'Tom', 'Haverford', 'Entrepreneur', 50000,1),
(4, 'April', 'Ludgate', 'Assistant to the Director of Parks and Recreation', 25000,1),
(5, 'Jerry', 'Gergich', 'Office Manager', 50000,1),
(6, 'Donna', 'Meagle', 'Office Manager', 60000,1),
(7, 'Ann', 'Perkins', 'Nurse', 55000,4),
(8, 'Chris', 'Traeger', 'City Manager', 90000,3),
(9, 'Ben', 'Wyatt', 'State Auditor', 70000,6),
(10, 'Andy', 'Dwyer', 'Shoe Shiner and Musician', 20000, NULL),
(11, 'Mark', 'Brendanawicz', 'City Planner', 57000, 3),
(12, 'Craig', 'Middlebrooks', 'Parks Director', 65000,1);



CREATE TABLE departemen (
  id_departemen INT NOT NULL AUTO_INCREMENT,
  nama_departemen varchar(50) NOT NULL,
  PRIMARY KEY (id_departemen)
);

INSERT INTO departemen (nama_departemen)
VALUES
('Parks and Recreation'),
('Animal Control'),
('Public Works'),
('Healthcare'),
('Library'),
('Finance');













