SELECT
    a.artist_ID,
    a.artist_name,
    TIMESTAMPDIFF (YEAR, a.artist_date_of_birth, CURDATE ()) AS age,
    COUNT(DISTINCT f.festival_ID) AS festival_participations
FROM
    artist a
    JOIN performances p ON a.artist_ID = p.artist_ID
    JOIN events e ON p.event_ID = e.event_ID
    JOIN festival f ON e.festival_ID = f.festival_ID
WHERE
    TIMESTAMPDIFF (YEAR, a.artist_date_of_birth, CURDATE ()) < 30
GROUP BY
    a.artist_ID,
    a.artist_name
ORDER BY
    festival_participations DESC
LIMIT
    5;

-- ok