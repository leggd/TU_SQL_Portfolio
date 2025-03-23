-- Function working with NULL -- 
USE HomescanFinal;
GO
-- Select appropriate columns from Users table
SELECT Users.UserID, Users.UserName,
-- Check if DeviceName column from Device table is NULL,
-- Assign appropriate string message if True
ISNULL(Device.DeviceName, 'No Device Assigned') AS DeviceName
FROM Users
-- Join Device and Users table for easy comparison
LEFT JOIN Device ON Users.UserID = Device.UserID;

