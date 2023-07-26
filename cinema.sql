DROP TABLE movies;

CREATE TABLE movies(
    id SERIAL,
    title VARCHAR(255),
    duration INT,
    bbfc_rating VARCHAR(255)
);

-- CREATE

INSERT INTO movies (title, duration, bbfc_rating) VALUES ('Alien', 117, '18');
INSERT INTO movies (title, duration, bbfc_rating) VALUES ('The Imitation Game', 114, '12A');
INSERT INTO movies (title, duration, bbfc_rating) VALUES ('Iron Man', 126, '12A');
INSERT INTO movies (title, duration, bbfc_rating) VALUES ('The Martian', 144, '12A');
INSERT INTO movies (title, duration, bbfc_rating) VALUES ('Guardians of the Galaxy', 121, '12A');
INSERT INTO movies (title, duration, bbfc_rating) VALUES ('You Only Live Twice', 117, 'PG');
INSERT INTO movies (title, duration, bbfc_rating) VALUES ('I Know What You Did Last Summer', 101, '18');

-- READ

-- SELECT * FROM movies WHERE LOWER(title) LIKE LOWER('%The%');
-- SELECT * FROM movies WHERE bbfc_rating = '12A' ORDER BY duration DESC;
-- SELECT COUNT(*) FROM movies;

SELECT DISTINCT bbfc_rating FROM movies;

SELECT bbfc_rating, COUNT(*) FROM movies GROUP BY bbfc_rating;

-- UPDATE

UPDATE movies SET (duration, bbfc_rating) = (178,'15') WHERE id = 5; -- most of the time we use id

-- DELETE

DELETE FROM movies WHERE id = 5;