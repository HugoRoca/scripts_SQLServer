BEGIN
BEGIN TRY
BEGIN TRANSACTION  
BEGIN
<<Cuerpo de procedimiento>>
END
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
	BEGIN
		ROLLBACK TRAN
	END
DECLARE @nLinea INT=ERROR_LINE()                            
DECLARE @cError VARCHAR(8000)=ERROR_MESSAGE()                            
DECLARE @cStored varchar(500)=(SELECT TOP 1 name FROM sys.objects WHERE object_id=@@PROCID)                                           
EXEC SIS_RegitrarError @nLinea, @cError, @cStored
END CATCH
END 