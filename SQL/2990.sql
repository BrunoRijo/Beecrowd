/* Mostrar o CPF, nome dos empregados e o nome do departamento dos empregados que não trabalham em nenhum projeto. O resultado deve estar ordenado por cpf */

SELECT 
    emp.cpf
    ,emp.enome
    ,dep.dnome
FROM empregados emp
INNER JOIN departamentos dep ON dep.dnumero = emp.dnumero
WHERE emp.cpf NOT IN (
    SELECT t.cpf_emp 
    FROM trabalha t
    INNER JOIN projetos p ON p.pnumero = t.pnumero
)
ORDER BY emp.cpf

