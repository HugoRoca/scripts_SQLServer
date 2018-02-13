CREATE PROCEDURE [dbo].[SIS_RegitrarError] @nLineaError INT
	,@cDescrip VARCHAR(8000)
	,@cNombreStore VARCHAR(500)
AS
BEGIN
	INSERT INTO SIFIC_Errores (
		dFecha
		,nLineaError
		,cDescrip
		,cDatos
		,cStore
		)
	VALUES (
		GETDATE()
		,@nLineaError
		,@cDescrip
		,CONVERT(VARCHAR(50), HOST_NAME() + ' - ' + SUSER_SNAME(SUSER_SID()))
		,@cNombreStore
		)

	DECLARE @lsMesaje AS VARCHAR(max)

	SET @lsMesaje = '        
Error al procesar el siguiente Stored: ' + @cNombreStore + '        
Linea: ' + RTrim(cast(@nLineaError AS VARCHAR(10))) + '        
Descripcion: ' + @cDescrip
		--EXEC PA_EnviarCorreoDBA 'jbelupu@ilc.com.pe;ksernades@ilc.com.pe;lhuerta@ilc.com.pe', 'aespinoza@ilc.com.pe', 'I.T. Service Database Management: Errores SIFIC', @lsMesaje        
END