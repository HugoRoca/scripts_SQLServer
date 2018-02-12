CREATE PROCEDURE dbo.SCC_Configurar_Parametros_Cerrar
AS
-- To enable the feature.  
EXEC sp_configure 'xp_cmdshell',0;

-- To update the currently configured value for this feature.  
RECONFIGURE
WITH OVERRIDE;

--ACTIVAR VOLCADO DE DATOS A ARCHIVOS PLANOS  
EXEC sp_configure 'show advanced options',0;

-- To update the currently configured value for advanced options.  
RECONFIGURE
WITH OVERRIDE;
