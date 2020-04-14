
USE codeup_test_db;

LOAD DATA LOCAL INFILE 'csv/albums.csv';

INTO TABLE albums;

FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(artist, name, release_date, sales, genre)

