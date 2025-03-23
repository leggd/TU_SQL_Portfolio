-- Working with Character Data --
USE HomescanFinal
GO
-- Show Column Names and Respective Data Types
SELECT column_name, data_type FROM information_schema.columns
WHERE table_name = 'Users';

-- Insert Test Row with Unicode UserName
INSERT INTO Users (UserID, UserName, UserEmail, PhoneNumber,
			JoinDate, IsAdmin, LastLogin)
VALUES (1, 'üÑÎÇodÈüsÈr', 'dinskipp0@xing.com', '07719856321', 
		'2025-01-02', 0, '2025-03-05');

-- Retrieve Row to ensure successful population
SELECT * FROM Users;

-- Attempt to insert row with PhoneNumber 12 length instead of defined 11
INSERT INTO Users (UserID, UserName, UserEmail, PhoneNumber,
			JoinDate, IsAdmin, LastLogin)
VALUES (2, 'longphonenumber', 'mobtoolong@mail.com', '077899654722',
		'2025-01-15', 0, '2025-02-05');