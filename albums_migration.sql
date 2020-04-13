USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id - 1++,
    artist VARCHAR(50),
    name  VARCHAR(50) NOT NULL,
    release_date DATE_FORMAT(date, %Y),
    sales UNSIGNED(),
    genre VARCHAR(50)
);
