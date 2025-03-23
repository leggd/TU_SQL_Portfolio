-- Built in Function Query --
USE HomescanFinal
GO
-- Select appropriate columns for un-formatted demonstration
SELECT r.ReportID, r.DeviceType, r.CreationDate
FROM Report AS r;
-- Select appropriate columns, applying UPPER to Device Type
SELECT r.ReportID, UPPER(r.DeviceType) as DeviceTypeUppercase, 
-- Format CreationDate for better presentation
FORMAT(r.CreationDate, 'dd MMM yyyy') AS FormattedDate
FROM Report AS r;