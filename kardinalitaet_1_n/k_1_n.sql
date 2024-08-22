
-- Vorbereitung

USE design;
DROP TABLE IF EXISTS kittens;
DROP TABLE IF EXISTS catmoms;


-- MT: cats
CREATE TABLE IF NOT EXISTS catmoms
(
  id        INT         NOT NULL AUTO_INCREMENT,
  cat_name  VARCHAR(45) NOT NULL,
  fur_color VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);


-- MT: Struktur
DESCRIBE design.catmoms;


-- MT: Inserts
INSERT INTO catmoms (id, cat_name, fur_color) VALUES (DEFAULT, "Grizabella", "white");
INSERT INTO catmoms (id, cat_name, fur_color) VALUES (DEFAULT, "Mausi", "striped");


-- MT: Inhalte
SELECT * FROM design.catmoms;


-- DT: kittens
CREATE TABLE kittens
(
  id          INT         NOT NULL AUTO_INCREMENT,
  kitten_name VARCHAR(45) NOT NULL,
  fur_color   VARCHAR(45) NOT NULL,
  cats_id     INT         NOT NULL,
  PRIMARY KEY (id)
);


ALTER TABLE kittens
  ADD CONSTRAINT FK_cats_TO_kittens
    FOREIGN KEY (cats_id)
    REFERENCES cats (id);


-- DT: Struktur
DESCRIBE design.kittens;


-- DT: Inserts
INSERT INTO kittens (id, kitten_name, fur_color, cats_id) VALUES (DEFAULT, "Grizzi_1", "white", 1);
INSERT INTO kittens (id, kitten_name, fur_color, cats_id) VALUES (DEFAULT, "Grizzi_2", "white", 1);
INSERT INTO kittens (id, kitten_name, fur_color, cats_id) VALUES (DEFAULT, "Mausini", "striped", 2);


-- DT: Inhalte
SELECT * FROM design.kittens;





