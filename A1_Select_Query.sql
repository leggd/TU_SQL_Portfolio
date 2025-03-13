-- SELECT Query --

USE HomescanFinal;
GO

-- Select and Display Selected Rows from the ‘Device’ table
SELECT d.UserID, d.MacAddress, d.DeviceType
FROM Device AS d;