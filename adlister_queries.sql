CREATE DATABASE IF NOT EXISTS adlister;

CREATE TABLE adlister.users_ads(
    id INT UNSIGNED NOT NULL,
    user_name VARCHAR(50) NOT NULL ,
    ads VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT,
    first_name VARCHAR(50) DEFAULT 'NONE',
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT uc_email UNIQUE (email),
    password varchar(50) NOT NULL,
    start_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES adlister.users_ads(id),
    PRIMARY KEY (id)
);

CREATE TABLE users_ads.ads(
    ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    description VARCHAR(50) NOT NULL,
    post VARCHAR(400) NOT NULL,
    post_date DATE NOT NULL,
    category VARCHAR(50),
    FOREIGN KEY (ad_id) REFERENCES adlister.users_ads(id)
);



SELECT email
FROM ads
AS a
    JOIN category_ads AS ca in a.id = ca.ads_id
    JOIN categories AS cat ON ca.category_id _ cat.id;

SELECT title
FROM categoeis AS cat
JOIN category_ads AS ca ON cat.id = ca.category_id
Join ads ON ca.ads_id = ads.id;





