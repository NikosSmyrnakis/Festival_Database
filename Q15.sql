SELECT 
    v.visitor_ID,
    CONCAT(v.first_name, ' ', v.last_name) AS visitor_name,
    a.artist_ID,
    a.artist_name,
    SUM(CAST(r.artist_performance AS UNSIGNED) +
        CAST(r.sound_and_lighting AS UNSIGNED) +
        CAST(r.stage_presence AS UNSIGNED) +
        CAST(r.event_organization AS UNSIGNED) +
        CAST(r.overall_impression AS UNSIGNED)) AS total_score
FROM review r
JOIN ticket t ON r.ticket_ID = t.ticket_ID
JOIN visitor v ON t.visitor_ID = v.visitor_ID
JOIN events e ON t.event_ID = e.event_ID
JOIN performances p ON e.event_ID = p.event_ID
JOIN artist a ON p.artist_ID = a.artist_ID
WHERE p.artist_ID IS NOT NULL
GROUP BY v.visitor_ID, a.artist_ID
ORDER BY total_score DESC
LIMIT 5;
