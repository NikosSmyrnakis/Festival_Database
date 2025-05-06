WITH visitor_performance_counts AS (
    SELECT 
        v.visitor_ID,
        YEAR(e.event_start_time) AS event_year,
        COUNT(p.performance_ID) AS performance_count
    FROM visitor v
    JOIN ticket t ON v.visitor_ID = t.visitor_ID
    JOIN events e ON t.event_ID = e.event_ID
    JOIN performances p ON p.event_ID = e.event_ID
    GROUP BY v.visitor_ID, YEAR(e.event_start_time)
    HAVING COUNT(p.performance_ID) > 3
),
matching_counts AS (
    SELECT 
        performance_count,
        COUNT(*) AS num_visitors
    FROM visitor_performance_counts
    GROUP BY performance_count
    HAVING COUNT(*) > 1
)
SELECT 
    vpc.visitor_ID,
    vpc.event_year,
    vpc.performance_count
FROM visitor_performance_counts vpc
JOIN matching_counts mc ON vpc.performance_count = mc.performance_count
ORDER BY vpc.performance_count DESC, vpc.visitor_ID;
