/*
Quando os dados foram migrados de Banco de Dados, houve um pequeno mal-entendido por parte do antigo DBA.

Seu chefe precisa que você exiba o código e o nome dos produtos, cuja categoria inicie com 'super'.
*/

SELECT 
    prod.id
    ,prod.name
FROM products prod
INNER JOIN categories cat on cat.id = prod.id_categories
WHERE left(cat.name, 5) = 'super'
