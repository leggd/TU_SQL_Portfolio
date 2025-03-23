-- Implicit Join Query --
USE HomescanFinal;
GO
-- Join Rows where UserID from Users matches UserID from Device
SELECT *
FROM Users AS u, Device AS d
WHERE u.UserID = d.UserID;
