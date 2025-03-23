-- Column and Table Aliases --
USE HomescanFinal;
GO
-- Using table alias 'u', retrieve UserEmail column
-- Display as column labelled 'Email Addresses'
SELECT u.UserEmail AS 'Email Addresses'
FROM Users AS u;
