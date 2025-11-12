CREATE OR REPLACE VIEW query1 AS
SELECT name, price 
FROM item 
WHERE seller = 'jemma123' 
ORDER BY price DESC;