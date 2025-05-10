SELECT
    a.artist_ID,
    a.artist_name,
    COUNT(DISTINCT fl.continent) AS continent_count
FROM
    artist a
    JOIN performances p ON a.artist_ID = p.artist_ID
    JOIN events e ON p.event_ID = e.event_ID
    JOIN festival_location fl ON e.festival_ID = fl.festival_ID
GROUP BY
    a.artist_ID,
    a.artist_name
HAVING
    COUNT(DISTINCT fl.continent) >= 3;

-- empty set but probably ok