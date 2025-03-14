-- Inner Join Query --
USE HomescanFinal;
GO
-- Join Report with Device using DeviceID, then join Device with Users using UserID
SELECT u.UserName, d.DeviceType, r.ReportID
FROM Report AS r
INNER JOIN Device AS d ON r.DeviceID = d.DeviceID
INNER JOIN Users AS u ON d.UserID = u.UserID;
