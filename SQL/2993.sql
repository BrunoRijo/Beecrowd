/*
Dada uma single-column table de valores inteiros, qual é o valor atributo mais frequente, ou seja, a moda estatística desses valores?
*/

SELECT 
  --Função nativa do PostgreSQL
  mode() WITHIN GROUP (ORDER BY amount) AS moda
FROM value_table;
