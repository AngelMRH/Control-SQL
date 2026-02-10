SELECT 
    r.session_id,
    s.login_name,
    s.host_name,
    r.status,
    r.command,
    r.cpu_time,
    r.total_elapsed_time,
    t.text AS query
FROM sys.dm_exec_requests r
JOIN sys.dm_exec_sessions s 
    ON r.session_id = s.session_id
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
WHERE s.is_user_process = 1;
