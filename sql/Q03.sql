SELECT
    ap.artist_ID,
    a.artist_name,
    ap.festival_ID,
    COUNT(*) AS warmup_count
FROM
    artist_participations ap
    JOIN artist a ON ap.artist_ID = a.artist_ID
WHERE
    ap.performance_type = 'warm up'
GROUP BY
    ap.artist_ID,
    ap.festival_ID
HAVING
    COUNT(*) > 2
ORDER BY
    warmup_count DESC;