USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS 'Exercise 1';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums
WHERE name = "Sgt. Peppers Lonely Hearts Club Band";

SELECT genre FROM albums
WHERE name = "Nevermind";

SELECT name FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name FROM albums
WHERE sales < 20;

SELECT name, genre FROM albums
WHERE genre = 'Rock';

SELECT `name`, genre
FROM albums
WHERE genre LIKE '%rock%';