SELECT
    CONCAT (v.first_name, ' ', v.last_name) AS visitor_name,
    e.event_name,
    ROUND(AVG(r.overall_impression), 2) AS avg_overall_impression
FROM
    visitor v
    JOIN ticket t ON v.visitor_ID = t.visitor_ID
    JOIN events e ON t.event_ID = e.event_ID
    JOIN review r ON t.ticket_ID = r.ticket_ID
WHERE
    v.first_name = 'Shane'
    AND v.last_name = 'Richard'
GROUP BY
    e.event_name;
-- Leonard Wade
