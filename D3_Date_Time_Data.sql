-- Working with Date & Time Data --
USE HomescanFinal
GO
-- Select appropriate columns from Report Table
SELECT 
r.ReportID,
r.DeviceType, 
r.Content,
r.CreationDate,
r.CreationTime
FROM Report AS r
-- Retrieve all reports created after 1st Jan 2025
WHERE r.CreationDate > '2025-01-01'
-- Display by Date and Time Ascending
ORDER BY r.CreationDate ASC, r.CreationTime ASC;