
-- 04 SELECTS
<<<<<<< HEAD
=======

>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9
-- Einzeltabellen
SELECT * FROM design.catmoms;
SELECT * FROM design.kittens;

<<<<<<< HEAD
--Inner JOIN 1 / Gesammte Kombi-Tabelle
=======
-- Inner Join 1 / Gesamte Kombi-Tabelle
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9
SELECT
    *
FROM design.catmoms INNER JOIN design.kittens
ON design.catmoms.id = design.kittens.catmoms_id
<<<<<<< HEAD
;
=======
; 
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9

-- Inner Join 2 / Verwandschaft
-- "X ist die Mutter von Y"
SELECT
<<<<<<< HEAD
=======
    catmoms.cat_name AS Katzen,
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9
    CONCAT(catmoms.cat_name, " ist die Mutter von ", kittens.kitten_name) Verwandschaft
FROM design.catmoms INNER JOIN design.kittens
ON design.catmoms.id = design.kittens.catmoms_id
;

-- Inner Join 3 / Wieviel Kinder haben die Katzen?
SELECT
    cat_name AS Katzen, -- nicht aggregiert / organisch
    COUNT(cat_name) Kinderzahl -- aggregiert / f()
FROM design.catmoms INNER JOIN design.kittens
ON design.catmoms.id = design.kittens.catmoms_id
GROUP BY cat_name -- Wichtig bei Kombi Aggr./Nicht-Aggr.
<<<<<<< HEAD
;


=======
;
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9
