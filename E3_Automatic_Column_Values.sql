-- Automatic Column Values
USE HomescanFinal
GO
-- Creation of a new table to demonstrate Automatic Value Generation
CREATE TABLE AuditLogs (
 -- Auto generate a unique GUID for each row with NEWID()
AuditID UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
-- User ID performing the action
UserID INT,                              
 -- Action Performed
ActionType VARCHAR(100),       
-- Optional additional info
ActionDetails VARCHAR(200),                 
  -- Timestamp of when the action occurred
ActionTimestamp DATETIME DEFAULT GETDATE(),         
);
-- Insert rows with random users for demonstration purposes
INSERT INTO AuditLogs (UserID, ActionType, ActionDetails)
VALUES 
(10, 'UserLogin', 'User logged into the app'),
(56, 'ScanCompleted', 'User completed a network scan'),
(34, 'ReportGenerated', 'User generated a report'),
(183, 'UserLoginFailed', 'User entered Incorrect Password'),
(225, 'UserForgotPassword', 'User requested Password Reset'),
(864, 'UserLogout', 'User logged out of the app'),
(732, 'UserLogin', 'User logged into the system');
-- Retrieve audit logs with UserName Column
SELECT
al.AuditID,
al.UserID, 
u.UserName, 
al.ActionType,
al.ActionDetails, 
al.ActionTimestamp
FROM AuditLogs AS al
-- Join Users and AuditLogs tables using UserID
JOIN Users AS u ON al.UserID = u.UserID
 -- Order logs by timestamp in descending order
ORDER BY al.ActionTimestamp DESC; 