-- Conversion Function
USE HomescanFinal
GO
-- Select Standard MacAddress column from Device table
SELECT d.MacAddress, 
-- Covert MacAddress to Binary displayed in BinaryMac Column
CONVERT(VARBINARY, MacAddress) AS BinaryMac
FROM Device AS d;