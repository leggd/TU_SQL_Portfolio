-- Modify Table Data
USE HomescanFinal
GO
-- Retrieve existing User record for demonstration
SELECT * FROM Users as u
WHERE u.UserID = 1;
-- Update User record with new UserEmail
UPDATE Users
SET Users.UserEmail = 'mpipe0new@gmail.com'
WHERE Users.UserID = 1;
-- Retrieve updated User record for demonstration
SELECT * FROM Users AS u
WHERE u.UserID = 1;