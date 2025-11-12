SELECT 
c.name AS customer_name,
i.name AS item_name,
MAX(r.stars) AS highest_rating,
MIN(r.stars) AS lowest_rating
FROM rating r
JOIN customer c ON r.customer_id = c.id
JOIN item i ON r.item_id = i.id
GROUP BY c.name, i.name
HAVING COUNT(*) > 1
ORDER BY c.name ASC;