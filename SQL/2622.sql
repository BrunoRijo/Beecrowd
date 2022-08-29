/*
O setor de vendas quer fazer uma promoção para todos os clientes que são pessoas jurídicas. Para isso você deve exibir o nome dos clientes que sejam pessoa jurídica.
*/

SELECT c.name
FROM customers c
INNER JOIN legal_person p ON p.id_customers = c.id
