-- DISTINCT Query --
USE HomescanFinal;
GO
-- Utilisation of DISTINCT clause to retrieve unique device types
SELECT DISTINCT d.DeviceType 
FROM Device AS d;
