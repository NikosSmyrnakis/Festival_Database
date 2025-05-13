WITH artist_festival_counts AS (
    SELECT
        artist_ID,
        artist_name,
        COUNT(DISTINCT festival_ID) AS total_festival_participations
    FROM
        artist_participations
    GROUP BY
        artist_ID, artist_name
),
max_participation AS (
    SELECT MAX(total_festival_participations) AS max_count
    FROM artist_festival_counts
)
SELECT
    afc.artist_ID,
    afc.artist_name,
    afc.total_festival_participations
FROM
    artist_festival_counts afc,
    max_participation mp
WHERE
    afc.total_festival_participations <= mp.max_count - 5
ORDER BY
    total_festival_participations DESC;