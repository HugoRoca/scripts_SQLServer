DECLARE @nDoc int
EXEC sp_xml_preparedocument @nDoc OUTPUT,@oData
SELECT *	
FROM openxml(@nDoc, '/GENESYS/DATA', 1) WITH ()