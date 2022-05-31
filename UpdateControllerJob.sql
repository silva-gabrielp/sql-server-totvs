/*
* Atualizar controlador de JOB
*
* Para atualizar o controlador de job do RM manualmente, é necessário executar o script abaixo:
*
* - Antes de executar, selecione na variável entre aspas simples "Name_Server_Origin", aperte CTRL + H
* e insira no campo em 'Replace With' o nome do servidor com os dois pontos e a porta que está 
* atribuído o Controlador como 1.
*
* - E, selecione na variável entre aspas simples "Name_Server_Origin", aperte CTRL + H e insira no 
* campo em 'Replace With' o nome do servidor com os dois pontos e a porta que está atribuído o 
* Controlador como 1
*/

DECLARE
@SERVERORIGIN		VARCHAR(100) = 'Name_Server_Origin',
@SERVERDESTINATION	VARCHAR(100) = 'Name_Server_Destination'
GO

UPDATE GJOBSERVER
SET    CONTROLADOR 	= '0'
WHERE  NOMESERVIDOR = @SERVERORIGIN
GO

UPDATE GJOBSERVER 
SET    CONTROLADOR 	= '1' 
WHERE  NOMESERVIDOR = @SERVERDESTINATION
GO