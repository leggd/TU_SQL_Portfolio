-- CASE Expression --
USE HomescanFinal;
GO
-- Retrieve RiskLevel Column and provide advice based on Risk Value
SELECT t.RiskLevel AS RiskScore,
CASE
WHEN t.RiskLevel > 7 THEN 'Critical Risk - Address Immediately'
WHEN t.RiskLevel > 2 AND t.RiskLevel <= 7 
THEN 'High Risk - Address as soon as possible'
ELSE 'Low Risk - Monitoring required'
END AS RiskAdvice
FROM Threat AS t;
