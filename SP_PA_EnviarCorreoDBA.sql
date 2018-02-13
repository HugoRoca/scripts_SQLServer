CREATE PROCEDURE [dbo].[PA_EnviarCorreoDBA] @pcTo AS VARCHAR(255)
	,@pcCC AS VARCHAR(255)
	,@pcSubject AS VARCHAR(255)
	,@pcMessage AS VARCHAR(max)
AS
BEGIN
	--SELECT getdate() --POR CAIDA DEL SERVIDOR DE DOMINIO  
	--TEMPORALMENTE COMENTADO POR CAIDA DEL SERVIDOR DE DOMINIO  
	--*********************************************************  
	EXEC msdb..sp_send_dbmail @profile_name = 'Database Management'
		,@recipients = @pcTo
		,@copy_recipients = @pcCC
		,@subject = @pcSubject
		,@body = @pcMessage
		--*********************************************************  
END