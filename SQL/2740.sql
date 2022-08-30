/*
A Liga Internacional de Escavação Subterrânea já é um sucesso entre os esportes alternativos, porém todos que trabalham na organização do evento trabalham com escavação e não computação. Então você foi contratado para solucionar o problema da Liga.

Selecione os três primeiros colocados da lista com a frase inicial Podium: e também, os dois últimos times que serão rebaixados para série B com a frase inicial Demoted:
*/

SELECT x.team
FROM(
( SELECT position,CONCAT('Podium: ', team) team
  FROM league
  ORDER BY position ASC 
  LIMIT 3)

  UNION ALL 

  (SELECT position, CONCAT('Demoted: ', team) team
  FROM league
  ORDER BY position DESC 
  LIMIT 2)
) AS x
ORDER BY x.position
