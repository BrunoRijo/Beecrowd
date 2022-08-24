SELECT
    cat.name
    ,SUM(prod.amount) sum
FROM products prod
INNER JOIN categories cat ON cat.id = prod.id_categories
GROUP BY cat.name
