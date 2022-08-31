/*
Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e você poderá ajudar eles.

Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.
*/

SELECT
    cat.name
    ,SUM(prod.amount) sum
FROM products prod
INNER JOIN categories cat ON cat.id = prod.id_categories
GROUP BY cat.name
