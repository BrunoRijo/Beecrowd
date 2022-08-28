/*
A nossa empresa está querendo fazer um novo contrato para o fornecimento de novos produtos superluxuosos, e para isso precisamos de alguns dados dos nossos produtos.

Seu trabalho é exibir o nome dos produtos, nome dos fornecedores e o preço, para os produtos cujo preço seja maior que 1000 e sua categoria seja ‘Super Luxury.
*/

SELECT
    prod.name, prov.name, prod.price
FROM products prod
INNER JOIN providers prov ON prov.id = prod.id_providers
INNER JOIN categories cat ON cat.id = prod.id_categories AND cat.name = 'Super Luxury'
WHERE prod.price > 1000
