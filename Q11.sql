WITH artist_festival_counts AS (
    SELECT 
        a.artist_ID,
        a.artist_name,
        COUNT(DISTINCT f.festival_ID) AS participation_count
    FROM artist a
    JOIN performances p ON a.artist_ID = p.artist_ID
    JOIN events e ON p.event_ID = e.event_ID
    JOIN festival f ON e.festival_ID = f.festival_ID
    GROUP BY a.artist_ID, a.artist_name
),
max_participation AS (
    SELECT MAX(participation_count) AS max_count
    FROM artist_festival_counts
)
SELECT 
    af.artist_ID,
    af.artist_name,
    af.participation_count
FROM artist_festival_counts af
JOIN max_participation mp ON 1=1
WHERE af.participation_count >= mp.max_count - 5 
    AND af.participation_count < mp.max_count
ORDER BY af.participation_count DESC;

