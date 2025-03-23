-- Built In Function (CONCAT)
USE HomescanFinal
GO
-- Select UserID column from Device Table
SELECT d.UserID, 
-- Concatenate DeviceName, MacAddress and Description as user friendly summary
CONCAT(d.DeviceName, ' (', d.MacAddress, ') is affected by ', t.Description) 
AS DeviceThreatReport 
FROM Device AS d
-- Join appropriate tables
JOIN Device_Threat AS dt ON d.DeviceID = dt.DeviceID
JOIN Threat AS t ON dt.ThreatID = t.ThreatID;