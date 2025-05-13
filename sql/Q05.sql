WITH young_artist_participations AS (
    SELECT
        artist_ID,
        artist_name,
        COUNT(DISTINCT festival_ID) AS total_festival_participations
    FROM
        artist_participations
    WHERE
        TIMESTAMPDIFF(YEAR, artist_date_of_birth, CURDATE()) < 30
    GROUP BY
        artist_ID, artist_name
),
max_participation AS (
    SELECT MAX(total_festival_participations) AS max_count
    FROM young_artist_participations
)
SELECT
    yap.artist_ID,
    yap.artist_name,
    yap.total_festival_participations
FROM
    young_artist_participations yap,
    max_participation mp
ORDER BY
    yap.total_festival_participations DESC
LIMIT 5;