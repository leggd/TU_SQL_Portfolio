-- Adding Data to Table --
USE HomescanFinal
GO
-- Specify Table and the appropriate columns to enter data
INSERT INTO Device (DeviceID, DeviceName, MacAddress, DeviceType, UserID)
-- Insert provided values into specified columns
VALUES (1001, 'SmartLightbulb03', 'F4-6D-9E-12-AB-3C', 'smart_bulb', 57);
-- Display newly inserted row
SELECT * FROM Device as d
WHERE d.UserID = 57;