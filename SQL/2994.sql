/*
Você trabalha no setor de TI de um Hospital e precisa calcular a receita de pagamento de cada um dos médicos. 
-> Cada médico ganha 150$ por hora mais uma porcentagem dependendo do turno de trabalho, por exemplo, o médico Wellington trabalhou 1 hora no turno do dia, e 2 horas no turno da noite, logo seu salário semanal será: ( ( 1 * 150 ) + 1% ) + ( ( 2 * 150 ) + 15% ) = 496.5. 

Além disso, você pode usar a função round(value,1) para exibir os salários com 1 casa decimal e ordene o resultado do maior para o menor salário.
*/

SELECT 
    medico.name
    ,round(sum((consultas.hours * 150) + ((consultas.hours * 150)*(turno.bonus/100))),1) AS salary
FROM attendances consultas
INNER JOIN work_shifts turno ON consultas.id_work_shift = turno.id
INNER JOIN doctors medico ON consultas.id_doctor = medico.id
GROUP BY medico.name
ORDER BY salary DESC
