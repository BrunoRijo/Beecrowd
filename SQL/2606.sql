SELECT 
    prod.id
    ,prod.name
FROM products prod
INNER JOIN categories cat on cat.id = prod.id_categories
WHERE left(cat.name, 5) = 'super'
