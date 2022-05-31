/*
* Limpeza de Tabelas após Restore
* 
* O script tem o intuito de realizar a limpeza de tabelas o funcionamento correto
* após ser realizado uma réplica na base de destino para que o cache seja deletado.
*/

DELETE FROM GRELBATCH
DELETE FROM GJOBLOG
DELETE FROM GJOBXLOG
DELETE FROM GJOBXEXECUCAO
DELETE FROM GJOBX
DELETE FROM GJOBSERVER
DELETE FROM​ GKNOWNJOBSERVER
DELETE FROM GKNOWNJOBSERVERAPPSERVERRULES