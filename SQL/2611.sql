/*
Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.
*/

SELECT 
    m.id ,m.name
FROM movies m
INNER JOIN genres g ON g.id = m.id_genres
WHERE g.description = 'Action'
