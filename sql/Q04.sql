SELECT
    a.artist_name,
    ROUND(AVG(r.artist_performance), 2) AS avg_artist_performance,
    ROUND(AVG(r.overall_impression), 2) AS avg_overall_impression
FROM
    review r
    JOIN ticket t ON r.ticket_ID = t.ticket_ID
    JOIN events e ON t.event_ID = e.event_ID
    JOIN performances p ON e.event_ID = p.event_ID
    AND t.event_ID = p.event_ID
    JOIN artist a ON p.artist_ID = a.artist_ID
WHERE
    a.artist_ID = (
        SELECT
            artist_ID
        FROM
            artist
        WHERE
            artist_name = 'Ashley Harris'
    )
    AND r.artist_performance IS NOT NULL
    AND r.overall_impression IS NOT NULL
GROUP BY
    a.artist_name;
-- Amy Newman