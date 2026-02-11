SELECT 
    StrRFC,
    COUNT(*) AS Total
FROM Entidades
GROUP BY StrRFC
HAVING COUNT(*) > 1
ORDER BY Total DESC;
