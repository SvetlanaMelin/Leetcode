SELECT 
    s.user_id,
    ROUND(
        CASE 
            WHEN COUNT(c.user_id) = 0 THEN 0 
            ELSE CAST(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(c.user_id)
        END, 
        2
    ) AS confirmation_rate
FROM 
    Signups s
LEFT JOIN 
    Confirmations c
ON 
    s.user_id = c.user_id
GROUP BY 
    s.user_id;