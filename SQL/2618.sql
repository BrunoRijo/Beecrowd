/*
O setor de importação da nossa empresa precisa de um relatório sobre a importação de produtos do nosso fornecedor Sansul.

Sua tarefa é exibir o nome dos produtos, o nome do fornecedor e o nome da categoria, para os produtos fornecidos pelo fornecedor ‘Sansul SA’ e cujo nome da categoria seja 'Imported'.
*/

SELECT
    prod.name, prov.name, cat.name
FROM products prod
INNER JOIN providers prov ON prov.id = prod.id_providers AND prov.name = 'Sansul SA'
INNER JOIN categories cat ON cat.id = prod.id_categories AND cat.name = 'Imported'
