-- Conditional Logic --
Use HomescanFinal;
GO
-- Select UserID and Username Columns from Users table
SELECT UserID, UserName, 
-- Check is IsAdmin value is 1, True = Administrator, False = Standard User 
       IIF(IsAdmin = 1, 'Administrator', 'Standard User') AS UserRole
FROM Users;
-- Check if UserEmail value contains '@', True = Valid Email, False = Invalid Email
SELECT UserID, UserName, UserEmail,
       IIF(UserEmail LIKE '%@%', 'Valid Email', 'Invalid Email') AS EmailValidity
FROM Users;