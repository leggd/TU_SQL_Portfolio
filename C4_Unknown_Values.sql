-- Unknown Value Query
USE HomescanFinal
GO
-- Select appropriate columns from Users table
SELECT u.UserID, u.UserName, u.UserEmail
FROM Users AS u
-- Retrieve all rows where UserEmail is unknown/NULL
WHERE u.UserEmail IS NULL;
