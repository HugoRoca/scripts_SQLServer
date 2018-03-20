CREATE FUNCTION dbo.EncriptarClave (@Clave NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
	SET @Clave = UPPER(@Clave)

	DECLARE @ClaveEncriptada NVARCHAR(MAX);

	SELECT
		@ClaveEncriptada = UPPER(SUBSTRING(master.dbo.fn_varbintohexstr(HASHBYTES('SHA1', @Clave)), 3, 40));

	RETURN @ClaveEncriptada;
END
/*SELECT dbo.EncriptarClaveSHA1('HUGOAntonio')

Esto no es reversible, una vez encriptada ya no se puede desencriptar, se recomienda guardar log.

*/