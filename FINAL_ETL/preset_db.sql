CREATE DATABASE good_books_db;

use good_books_db;

CREATE TABLE author (
	id int NOT NULL AUTO_INCREMENT, -- primary key
    name varchar(255), -- author name
    gender varchar(20), -- gender, if not exist null
    rating DECIMAL(5,2), -- rating, if not exist null
    count INT, -- count, if not exist null
    type varchar(10), -- type -> gdr or nyt based on source
    PRIMARY KEY (id)
);

CREATE TABLE book_gdr (
	id int NOT NULL AUTO_INCREMENT,
    book_title varchar(255),
    author_name varchar(255),
    genre_1 varchar(100),
    genre_2 varchar(100),
    book_average_rating DECIMAL(5,2),
    num_ratings INT,
    num_reviews INT,
    pages Int,
    publish_date YEAR(4),
    PRIMARY KEY (id)
);

CREATE TABLE book_nyt (
	id int NOT NULL AUTO_INCREMENT,
    book_title varchar(255),
    author_name varchar(255),
    publish_year YEAR(4),
    PRIMARY KEY (id)
);

SELECT * FROM good_books_db.author where type like '%GDR%';
SELECT * FROM good_books_db.author where type like '%NYT%';
SELECT * FROM good_books_db.book_gdr;
SELECT count(*) FROM good_books_db.book_gdr;
SELECT * FROM good_books_db.book_nyt;
SELECT count(*) FROM good_books_db.book_nyt;
