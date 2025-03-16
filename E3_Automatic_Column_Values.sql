-- Creation of a new table to demonstrate Automatic Value Generation
CREATE TABLE AuditLogs (
    AuditID UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY, -- Auto generate a unique GUID for each row with NEWID()
    UserID INT,                                           -- User ID performing the action
    ActionType VARCHAR(100),                              -- Action Performed
    ActionDetails VARCHAR(200),                           -- Optional additional info
    ActionTimestamp DATETIME DEFAULT GETDATE(),           -- Timestamp of when the action occurred
);

INSERT INTO AuditLogs (UserID, ActionType, ActionDetails)
VALUES 
(10, 'UserLogin', 'User logged into the app'),
(56, 'ScanCompleted', 'User completed a network scan'),
(34, 'ReportGenerated', 'User generated a report'),
(183, 'UserLoginFailed', 'User entered Incorrect Password'),
(225, 'UserForgotPassword', 'User requested Password Reset'),
(864, 'UserLogout', 'User logged out of the app'),
(732, 'UserLogin', 'User logged into the system');

SELECT
    al.AuditID, al.UserID, u.UserName, al.ActionType, al.ActionDetails, al.ActionTimestamp
FROM AuditLogs AS al
JOIN Users AS u ON al.UserID = u.UserID
ORDER BY al.ActionTimestamp DESC;  -- Order logs by timestamp in descending order