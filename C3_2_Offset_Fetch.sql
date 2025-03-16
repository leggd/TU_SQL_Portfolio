-- OFFSET FETCH Query --
USE HomescanFinal;
GO
-- Select appropriate columns from Users table
SELECT u.UserID, u.UserName, u.UserEmail, u.PhoneNumber
FROM Users AS u
-- Order retrieved data by UserID Ascending
ORDER BY u.UserID ASC
-- Skip the first 3 Users rows
OFFSET 3 ROWS
-- Retrieve the next 3 Users rows
FETCH NEXT 3 ROWS ONLY;
