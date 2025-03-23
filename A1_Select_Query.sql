-- SELECT Query --
USE HomescanFinal;
GO
-- Retrieve UserID, MacAddress and DeviceType Columns from the ‘Device’ table
SELECT d.UserID, d.MacAddress, d.DeviceType
FROM Device AS d;