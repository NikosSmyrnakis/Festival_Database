SELECT 
    a.artist_ID,
    a.artist_name,
    g.genre_name,
    CASE 
        WHEN EXISTS (
            SELECT 1
            FROM performances p
            JOIN events e ON p.event_ID = e.event_ID
            JOIN festival f ON e.festival_ID = f.festival_ID
            WHERE p.artist_ID = a.artist_ID
              AND YEAR(f.starting_date) = 2024
        )
        THEN 'yes'
        ELSE 'no'
    END AS has_participated
FROM artist a
JOIN genre g ON a.artist_ID = g.artist_ID
WHERE g.genre_name = 'rock';