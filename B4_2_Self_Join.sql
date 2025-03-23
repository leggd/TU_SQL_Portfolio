-- Self Join Query: Comparing two users who joined on the same date --
USE HomescanFinal;
GO
-- Select UserNames of two users joined on the same date
SELECT 
u1.UserName AS UserName1, 
u2.UserName AS UserName2, 
u1.JoinDate AS SharedJoinDate 
FROM
Users AS u1, 
Users AS u2  
-- Compare JoinDate of users
WHERE u1.JoinDate = u2.JoinDate 
-- Ensure no duplicates or self-matching
AND u1.UserID < u2.UserID;
