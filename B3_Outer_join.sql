-- Outer Join Query --
USE HomescanFinal;
GO
-- Full Outer Join between Users, Device and Report
-- Matches UserID with Device and Report, including all records from Users
-- Outputs Username, DeviceName and ReportID where possible
-- If there is no device or report for a user, NULL is returned
SELECT u.UserName, d.DeviceName, r.ReportID
FROM Users AS u
FULL OUTER JOIN Device AS d ON u.UserID = d.UserID  
FULL OUTER JOIN Report AS r ON u.UserID = r.UserID;
