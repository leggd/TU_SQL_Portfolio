-- Filter Data with SELECT TOP --
USE HomescanFinal;
GO
-- Select the Top 5 Devices with the most reports
SELECT TOP 5
-- Retrieve DeviceName column from Device Table
d.DeviceName,
-- Count the number of reports associated with each device
COUNT(r.ReportID) AS ReportCount
FROM Device AS d
-- Join Device table with Report table using DeviceID
JOIN Report AS r ON d.DeviceID = r.DeviceID
-- Group results by DeviceName to count Reports per Device
GROUP BY d.DeviceName
-- Order the results by ReportCount, highest to Lowest
ORDER BY ReportCount DESC;