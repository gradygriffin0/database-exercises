CREATE DATABASE IF NOT EXISTS quotables_db;
USE quotables_db;


DROP TABLE IF EXISTS quote_topic;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS topics;

CREATE TABLE authors
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)

);

INSERT INTO authors(first_name, last_name)
VALUES ('Douglas', 'Adams'),
       ('Mark', 'Twain'),
       ('Kurt', 'Vonnegut');

SELECT *
FROM authors;



CREATE TABLE quotes
(
    id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_id INT UNSIGNED,
    content   TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) references authors (id)

);


#SEEDS
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');

DESCRIBE quotes;

SELECT * FROM quotes;

CREATE TABLE topics(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
('Space and Time'),
('Humor'),
('Office Life'),
('Hitchiker''s Guide to the Galaxy');

CREATE TABLE quote_topic (
                             quote_id INTEGER UNSIGNED NOT NULL,
                             topic_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (quote_id) REFERENCES quotes(id),
                             FOREIGN KEY (topic_id) REFERENCES topics(id)
);

INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
       (3, 2), (3, 3), (3, 4), (4, 2), (5, 1);