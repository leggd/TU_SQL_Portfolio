-- Working with Character Data --
USE HomescanFinal
GO
-- Select appropriate columns from Users, obtaining length of PhoneNumber
SELECT UserName, LEN(PhoneNumber) AS PhoneNumberLength
FROM Users
-- Retrieve all rows were the phone number has a value and is too long or too short
WHERE LEN(PhoneNumber) > 11 OR LEN(PhoneNumber) < 11 AND PhoneNumber IS NOT NULL;
