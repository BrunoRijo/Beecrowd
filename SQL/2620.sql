/*
A auditoria financeira da empresa está pedindo para nós um relatório do primeiro semestre de 2016. Então exiba o nome dos clientes e o número do pedido para os clientes que fizeram pedidos no primeiro semestre de 2016.
*/

SELECT
    c.name, ord.id
FROM customers c
INNER JOIN orders ord ON ord.id_customers = c.id
WHERE ord.orders_date BETWEEN '2016-01-01' AND '2016-06-30'
