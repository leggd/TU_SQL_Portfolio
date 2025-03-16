-- Working with Data Types --
USE HomescanFinal
GO
-- Table Creation
CREATE TABLE Users (
	UserID INT, -- Integer Column
	UserName VARCHAR(16), -- VARCHAR (String) w/ 16 character limit
	UserEmail VARCHAR(50), -- VARCHAR (String) w/ with 50 character limit
	PhoneNumber VARCHAR(11), -- VARCHAR (String) w/ 11 character limit
	JoinDate DATE, -- DATE Column
	IsAdmin INT, -- Integer Column
	LastLogin DATE -- DATE Column
);
-- Insert Test Row with different Data Types
INSERT INTO Users (UserID, UserName, UserEmail, PhoneNumber, JoinDate, IsAdmin, LastLogin)
VALUES (1, 'mpipe0', 'dinskipp0@xing.com', '07719856321', '2025-01-02', 0, '2025-03-05');
-- Retrieve Row to ensure successful population
SELECT * FROM Users;