/*
O setor financeiro encontrou alguns problemas na entrega de um dos nossos fornecedores, a entrega dos produtos não condiz com a nota fiscal.

Seu trabalho é exibir o nome dos produtos e o nome do fornecedor, para os produtos fornecidos pelo fornecedor ‘Ajax SA’.
*/

SELECT
    prod.name, prov.name
FROM products prod
INNER JOIN providers prov ON prov.id = prod.id_providers AND prov.name = 'Ajax SA'

