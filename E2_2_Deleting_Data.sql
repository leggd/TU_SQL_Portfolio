-- Removing Data --
USE HomescanFinal
GO
-- Retrieve first 5 User Rows for demonstration
SELECT TOP 5 * FROM Users;
-- Delete User Row by UserID
DELETE FROM Users
WHERE Users.UserID = 1;
-- Retrieve first 5 User Rows again for demonstration
SELECT TOP 5 * FROM Users;