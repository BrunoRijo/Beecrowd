/*
Você trabalha em uma transportadora e precisa mostrar com urgência o ano e o nome de todos os clientes que enviaram e receberam pacotes azuis ou do ano de 2015 e também que o endereço do seu remetente ou destinatário não seja de Taiwan. Além disso, você deve ordenar o resultado pelo ano de maneira decrescente.
*/

SELECT
    pack.year
    ,usuario_send.name as "sender"
    ,usuario_receiver.name as "receiver"
FROM packages pack
INNER JOIN users usuario_send ON usuario_send.id = pack.id_user_sender AND usuario_send.address not like 'Taiwan%'
INNER JOIN users usuario_receiver ON usuario_receiver.id = pack.id_user_receiver AND usuario_receiver.address not like 'Taiwan%'
WHERE pack.color LIKE 'blue%' 
      OR pack.year = 2015
ORDER BY pack.year DESC

