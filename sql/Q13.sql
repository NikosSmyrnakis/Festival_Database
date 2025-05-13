WITH artist_continents AS (
    SELECT
        ap.artist_ID,
        ap.artist_name,
        fl.continent
    FROM
        artist_participations ap
        JOIN festival_location fl ON ap.festival_ID = fl.festival_ID
    GROUP BY
        ap.artist_ID, ap.artist_name, fl.continent
),
continent_counts AS (
    SELECT
        artist_ID,
        artist_name,
        COUNT(DISTINCT continent) AS num_of_continents
    FROM artist_continents
    GROUP BY artist_ID, artist_name
)
SELECT
    artist_ID,
    artist_name,
    num_of_continents
FROM
    continent_counts
WHERE
    num_of_continents >= 3
ORDER BY
    num_of_continents DESC;
    