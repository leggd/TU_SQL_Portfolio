-- Working with Data Types --
USE HomescanFinal
GO
-- Table Creation
CREATE TABLE Users(
UserID INT,			   -- Integer Type
UserName NVARCHAR(16), -- Unicode Variable-Length Character String Type
UserEmail VARCHAR(50), -- Variable-Length Character String Type
PhoneNumber CHAR(11),  -- Fixed-Length Character String Type
JoinDate DATE,         -- Date Type
IsAdmin INT,           -- Integer Type
LastLogin DATE);       -- Date Type

-- Show Column Names and Respective Data Types
SELECT column_name, data_type FROM information_schema.columns
WHERE table_name = 'Users';