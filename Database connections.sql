SELECT 
    DB_NAME(s.database_id) AS database_name,
    COUNT(*) AS connections
FROM sys.dm_exec_sessions s
WHERE s.is_user_process = 1
GROUP BY s.database_id
ORDER BY connections DESC;
