SELECT 
    session_id,
    login_name,
    host_name,
    program_name,
    last_request_end_time,
    status
FROM sys.dm_exec_sessions
WHERE is_user_process = 1
  AND status = 'sleeping'
ORDER BY last_request_end_time;
