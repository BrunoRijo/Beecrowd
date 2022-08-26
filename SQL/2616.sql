/*
A locadora pretende fazer uma promoção para os clientes que ainda não fizeram nenhuma locação.

Seu trabalho é nos entregar o ID e o nome dos clientes que não realizaram nenhuma locação. Ordene a saída por ID.
*/

SELECT
    id, name
FROM customers 
WHERE id NOT IN (SELECT id_customers FROM locations)
ORDER BY id
