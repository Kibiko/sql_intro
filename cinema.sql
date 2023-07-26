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
INSERT INTO movies (title, bbfc_rating) VALUES ('Braveheart', 'PG'); --still have an entry but the duration for Braveheart would be null

-- UPDATE

UPDATE movies SET (duration, bbfc_rating) = (178,'15') WHERE id = 5;

-- READ

SELECT * FROM movies;



-- DELETE