IF EXISTS(SELECT * FROM sys.SYSOBJECTS A INNER JOIN SYS.SCHEMAS B ON A.uid =B.schema_id 
    WHERE A.NAME='Gen_SelBandejaProducto_SP' AND B.name='dbo')
 DROP PROCEDURE Gen_SelBandejaProducto_SP 
GO

-- para indeces 
IF EXISTS (SELECT * FROM sys.indexes WHERE name='Cedula_INDEX' AND object_id = OBJECT_ID('CertificadoTributarioDetalle'))
BEGIN
	DROP INDEX Cedula_INDEX ON dbo.CertificadoTributarioDetalle; 
END