IF EXISTS(SELECT * FROM sys.SYSOBJECTS A INNER JOIN SYS.SCHEMAS B ON A.uid =B.schema_id 
    WHERE A.NAME='Gen_SelBandejaProducto_SP' AND B.name='dbo')
 DROP PROCEDURE Gen_SelBandejaProducto_SP 
GO