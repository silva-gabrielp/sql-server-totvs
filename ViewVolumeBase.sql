/*
* Ver tamanho da base de dados
*
* A sentença abaixo irá mostrar o tamanho da base atualmente em Megas, onde deverá ser utilizado algum software para converter o valor
*/

EXEC sp_spaceused

/*
* Outra forma de consultar o tamanho da base de dados, é o script abaixo,
* convertendo o valor da base em mega.
*/

DECLARE
@BASEDEDADOS VARCHAR(100) = 'Name_Database'
GO

USE @BASEDEDADOS
GO
SELECT DB_NAME() AS DatabaseName,(SUM(SIZE) / 1024) AS TamanhoMB
FROM SYS.database_files