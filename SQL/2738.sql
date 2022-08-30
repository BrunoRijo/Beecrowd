/*
A Universidade Tecnológica de Marte está com seu concurso aberto para Pesquisadores. Porém o computador que processava os dados dos candidatos estragou. Você deve mostrar a lista dos candidatos, contendo o nome do candidato e a sua pontuação final (com duas casas decimais após a vírgula). Lembre-se de mostrar a lista ordenada pela pontuação do candidato (maior pontuação no topo da lista).

A pontuação do candidato é o resultado da média ponderada descrita abaixo:

Avg = (math∗2)+(specific∗3)+(project_plan∗5) / 10
*/

SELECT 
    candidate.name
    ,cast(score.avg as decimal(18,2))
FROM candidate candidate
INNER JOIN (
    SELECT 
        candidate_id
        ,((math * 2) + (specific * 3) + (project_plan * 5))/ 10 AS avg
    FROM score
) score ON score.candidate_id = candidate.id
ORDER BY score.avg DESC 
