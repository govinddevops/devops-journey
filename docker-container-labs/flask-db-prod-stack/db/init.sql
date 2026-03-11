CREATE DATABASE IF NOT EXISTS prod_db;
USE prod_db;

CREATE TABLE IF NOT EXISTS info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255)
);

INSERT INTO info (message) VALUES ("Flask + MySQL Production Stack Running 🚀");

