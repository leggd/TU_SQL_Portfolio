-- Filter Data with Predicate --
USE HomescanFinal;
GO
-- Select appropriate columns from Device table
SELECT d.DeviceID, d.DeviceName, t.RiskLevel, t.Description
FROM Device d  
-- Join the Device_Threat junction table to link devices with their threats
JOIN Device_Threat dt ON d.DeviceID = dt.DeviceID  
-- Join the Threat table to retrieve threat details for each linked device
JOIN Threat t ON dt.ThreatID = t.ThreatID  
-- Filter only high-risk threats (over a RiskLevel of 7) using predicate 
-- 'WHERE >='
WHERE t.RiskLevel >= 7;