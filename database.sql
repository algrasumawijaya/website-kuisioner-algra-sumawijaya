CREATE DATABASE kuisioner_unilever;
USE kuisioner_unilever;

CREATE TABLE akun (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255),
    role ENUM('admin', 'user') DEFAULT 'user'
);

CREATE TABLE responden (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    usia INT,
    jenis_kelamin VARCHAR(20),
    pekerjaan VARCHAR(100)
);

CREATE TABLE jawaban (
    id INT AUTO_INCREMENT PRIMARY KEY,
    responden_id INT,
    pertanyaan TEXT,
    jawaban TEXT,
    FOREIGN KEY (responden_id) REFERENCES responden(id)
);
