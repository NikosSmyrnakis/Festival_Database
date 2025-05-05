SELECT 
    a.artist_ID,
    a.artist_name,
    a.artist_genre,
    CASE 
        WHEN p.performance_ID IS NOT NULL THEN 'Yes'
        ELSE 'No'
    END AS participated_in_year
FROM artist a
LEFT JOIN performances p ON a.artist_ID = p.artist_ID
LEFT JOIN events e ON p.event_ID = e.event_ID
LEFT JOIN festival f ON e.festival_ID = f.festival_ID
WHERE a.artist_genre = 'Rock'
  AND (f.starting_date IS NULL OR YEAR(f.starting_date) = 2024)
GROUP BY a.artist_ID;