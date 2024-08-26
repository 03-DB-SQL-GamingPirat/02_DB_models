<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
=======
-- 03. SELECTS / Servants, Products, Purchases

>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
-- Einzeltabellen
SELECT * FROM design.servants;
SELECT * FROM design.products;
SELECT * FROM design.purchases;

-- Inner Join 1 / Kombi (servants / products / purchases)
SELECT
<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
    * 
=======
    *
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
FROM design.purchases
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
;

-- Welche Artikel hat X/Y gekauft?
SELECT
    servant_name AS Diener,
<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
    product_name AS "Von X gekaufte Produkte;",
    CONCAT(servant_name, " kauft ", product_name, ".") AS Kaufhandlung
From design.purchases
=======
    product_name AS "Von X gekaufte Produkte:",
    CONCAT(servant_name, " kauft ", product_name, ".") AS Kaufhandlung
FROM design.purchases
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
-- WHERE servant_name = "Hubert"
WHERE servant_name LIKE "%rian"
;

<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
-- Wie viele Produkte hat ein Diener gekauft?
-- "X kauft Y Produkte"
SELECT
    CONCAT(servant_name, " kauft ", COUNT(product_name), " Produkte.") AS Kaufhandlung
From design.purchases
=======
-- Wieviele Produkte hat X gekauft?
-- "X kauft Y Produkte"
SELECT
    CONCAT(servant_name, " kauft ", COUNT(product_name), " Produkte.") AS Kaufhandlung
FROM design.purchases
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
-- WHERE servant_name = "Hubert"
WHERE servant_name LIKE "%rian"
;

<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
-- Wie viel geld hat Hubert / Arian / jeder Diener ausgegeben?
SELECT
    servant_name AS Diener,
    COUNT(servant_name) AS Artikelanzahl,
    SUM(Product_price) AS "Gesamtkosten (Euro)" -- aggregiert / f()
=======
-- Wieviel Geld hat Hubert/ Arian / jeder Diener ausgegeben?
SELECT
    servant_name AS Diener,  -- organisch
    COUNT(servant_name) AS Artikelanzahl, -- aggregiert / f()
    SUM(product_price) AS "Gesamtkosten (Euro)" -- aggregiert / f()
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
FROM design.purchases
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
-- WHERE servant_name = "Hubert"
GROUP BY servant_name
;

-- Wer hat das Produkt X gekauft?  
-- Irgendwas mit Lachs / Irgendwas mit Sauce LIKE
-- Spalten --> Diener / Produkt
-- WHERE / LIKE
SELECT
	servant_name AS Diener,
    product_name AS "Irgendwas mit Sauce oder Lachs"
FROM design.purchases
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
WHERE product_name LIKE "%Lachs%" OR product_name LIKE "%Sauce%" -- IN() ??
-- WHERE product_name LIKE "%Huhn%"
;

-- Wie oft wurde das Produkt X gekauft?
SELECT
<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
    product_name AS Produkte,
=======
	product_name AS Produkte,
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
    COUNT(product_name) AS Anzahl
FROM design.purchases
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
GROUP BY product_name
ORDER BY Anzahl DESC
;

-- Welche Umsätze hatte das Produkt X?
SELECT
	product_name AS Produkte, -- nicht aggr.
    COUNT(product_name) AS Anzahl, -- aggr.
<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
    SUM(product_price) AS Umsätze-- aggr. // count() * price
=======
    SUM(product_price) AS Umsaetze-- aggr. // count() * price
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
FROM design.purchases
INNER JOIN design.servants ON design.servants.id = design.purchases.servants_id
INNER JOIN design.products ON design.products.id = design.purchases.products_id
GROUP BY product_name
<<<<<<< HEAD:kardinalitaet_n_m/03a_n-m_select.sql
ORDER BY Umsätze DESC
=======
ORDER BY Umsaetze DESC
>>>>>>> 0efd97646f7ac9e7c1317a2b9c81d472881343c9:kardinalitaet_n_m_I/03a_n-m_select.sql
;
