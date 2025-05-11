-- With the indexes we saw it used Block Nested Loop Join
EXPLAIN FORMAT = JSON
SELECT
    a.artist_name,
    ROUND(AVG(r.artist_performance), 2) AS avg_artist_performance,
    ROUND(AVG(r.overall_impression), 2) AS avg_overall_impression
FROM
    review r FORCE INDEX (idx_review_ticket)
    JOIN ticket t FORCE INDEX (idx_ticket_event) ON r.ticket_ID = t.ticket_ID
    JOIN events e ON t.event_ID = e.event_ID
    JOIN performances p FORCE INDEX (idx_perf_event_artist) ON e.event_ID = p.event_ID
    AND t.event_ID = p.event_ID
    JOIN artist a FORCE INDEX (idx_artist_name) ON p.artist_ID = a.artist_ID
WHERE
    a.artist_ID = (
        SELECT
            artist_ID
        FROM
            artist FORCE INDEX (idx_artist_name)
        WHERE
            artist_name = 'Albert Carr'
    )
    AND r.artist_performance IS NOT NULL
    AND r.overall_impression IS NOT NULL
GROUP BY
    a.artist_name;

-- Without indexes Block Nested Loop Join
SET
    join_cache_level = 8;

EXPLAIN FORMAT = JSO
SELECT
    a.artist_name,
    ROUND(AVG(r.artist_performance), 2) AS avg_artist_performance,
    ROUND(AVG(r.overall_impression), 2) AS avg_overall_impression
FROM
    review r IGNORE INDEX (idx_review_ticket)
    JOIN ticket t IGNORE INDEX (idx_ticket_event) ON r.ticket_ID = t.ticket_ID
    JOIN events e ON t.event_ID = e.event_ID
    JOIN performances p IGNORE INDEX (idx_perf_event_artist) ON e.event_ID = p.event_ID
    AND t.event_ID = p.event_ID
    JOIN artist a IGNORE INDEX (idx_artist_name) ON p.artist_ID = a.artist_ID
WHERE
    a.artist_ID = (
        SELECT
            artist_ID
        FROM
            artist IGNORE INDEX (idx_artist_name)
        WHERE
            artist_name = 'Albert Carr'
    )
GROUP BY
    a.artist_name;
