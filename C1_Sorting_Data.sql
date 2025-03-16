-- Sorting Data --
USE HomescanFinal;
GO
-- Select appropriate columns from Report Table
SELECT * FROM Report AS r
-- Display in Descending Order by CreationDate and CreationTime Values
ORDER BY r.CreationDate DESC, r.CreationTime DESC;