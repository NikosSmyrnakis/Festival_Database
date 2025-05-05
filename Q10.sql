SELECT 
    LEAST(g1.genre_name, g2.genre_name) AS genre1,
    GREATEST(g1.genre_name, g2.genre_name) AS genre2,
    COUNT(DISTINCT f.festival_ID) AS appearances
FROM genre g1
JOIN genre g2 
    ON g1.artist_ID = g2.artist_ID 
    AND g1.genre_name < g2.genre_name
JOIN artist a ON a.artist_ID = g1.artist_ID
JOIN performances p ON p.artist_ID = a.artist_ID
JOIN events e ON p.event_ID = e.event_ID
JOIN festival f ON e.festival_ID = f.festival_ID
GROUP BY genre1, genre2
ORDER BY appearances DESC
LIMIT 3;