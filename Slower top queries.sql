SELECT TOP 10
    qs.execution_count,
    qs.total_elapsed_time / qs.execution_count AS avg_time_ms,
    qt.text
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
ORDER BY avg_time_ms DESC;

