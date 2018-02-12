CREATE PROCEDURE dbo.SCC_Configurar_Parametros
AS
--ACTIVAR VOLCADO DE DATOS A ARCHIVOS PLANOS  
EXEC sp_configure 'show advanced options',1;

-- To update the currently configured value for advanced options.  
RECONFIGURE
WITH OVERRIDE;

-- To enable the feature.  
EXEC sp_configure 'xp_cmdshell',1;

-- To update the currently configured value for this feature.  
RECONFIGURE
WITH OVERRIDE;
