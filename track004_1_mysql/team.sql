CREATE TABLE region_sido (
    sido_no INT AUTO_INCREMENT PRIMARY KEY,
    sido_name VARCHAR(50) NOT NULL
);

CREATE TABLE region_sigungu (
    sigungu_no INT AUTO_INCREMENT PRIMARY KEY,
    sido_no INT NOT NULL,
    sigungu_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (sido_no) REFERENCES region_sido(sido_no)
);