/*
O setor financeiro precisa de um relatório sobre os fornecedores dos produtos que vendemos. Os relatórios contemplam todas as categorias, mas por algum motivo, os fornecedores dos produtos cuja categoria é a executiva, não estão no relatório.

Seu trabalho é retornar os nomes dos produtos e dos fornecedores cujo código da categoria é 6.
*/

SELECT 
    prod.name
    ,prov.name
FROM products prod
INNER JOIN providers prov on prov.id = prod.id_providers
INNER JOIN categories cat on cat.id = prod.id_categories
WHERE cat.id = 6
