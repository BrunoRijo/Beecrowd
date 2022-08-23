SELECT 
    prod.name
    ,prov.name
FROM products prod
INNER JOIN providers prov on prov.id = prod.id_providers
INNER JOIN categories cat on cat.id = prod.id_categories
WHERE cat.id = 6
