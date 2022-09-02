/*
Para cada departamento da empresa, mostrar o nome dele, a quantidade de empregados lotados, a média salarial, o maior salário e o menor salário. O resultado deve estar em ordem decrescente por média salarial.

Dica: Você pode utilizar a função COALESCE(check_expression , 0) para substituir algum valor null por zero; Além disso, você também pode utilizar a função ROUND(value, 2) para exibir os valores com 2 casas decimais.
*/

SELECT
  dep.nome as "nome"
  ,count(func.matr) as "numero de empregados"
  ,cast(round(AVG(func.salario),2) as varchar) as "media salarial"
  ,cast(max(func.salario) as varchar) as "maior salario"
  ,cast(min(func.salario) as varchar) as "menor salario"
FROM divisao divs
INNER JOIN departamento dep on dep.cod_dep = divs.cod_dep
INNER JOIN (
-- Lista de salários
  SELECT emp.matr
      ,emp.lotacao_div
      ,(COALESCE(salario.salarioTotal,0)-COALESCE(desconto.desconto,0))salario
  FROM empregado emp
  LEFT JOIN (
    ---Captura o valor total do salario 
    SELECT
        emp.matr, sum(salario.valor) salarioTotal
    FROM empregado emp
    LEFT JOIN emp_venc con ON con.matr = emp.matr
    LEFT JOIN vencimento salario ON salario.cod_venc = con.cod_venc
    group by emp.matr
  ) salario on salario.matr = emp.matr
  LEFT JOIN ( 
    ---Captura o valor total do desconto 
    SELECT
        emp.matr
        ,sum(desco.valor) desconto
    FROM empregado emp
    INNER JOIN emp_desc con2 ON con2.matr = emp.matr
    INNER JOIN desconto desco ON desco.cod_desc = con2.cod_desc
    group by emp.matr
  ) desconto on emp.matr = desconto.matr
) func ON func.lotacao_div = divs.cod_divisao
GROUP BY dep.nome
ORDER BY AVG(func.salario) DESC
