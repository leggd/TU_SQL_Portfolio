-- Cross Join Query --
USE HomescanFinal;
GO
-- Cross Join all records from Users Table with all records from Device Table
SELECT u.UserName, d.DeviceName
FROM Users AS u
CROSS JOIN Device AS d;  
