SELECT
  CASE
    WHEN a.artist_ID IS NOT NULL THEN 'artist'
    ELSE 'group'
  END AS entity_type,
  COALESCE(a.artist_ID, gr.group_ID)   AS entity_ID,
  COALESCE(a.artist_name, gr.group_name) AS entity_name,
  g.genre_name,
  CASE
    WHEN art2024.artist_ID IS NOT NULL
      OR grp2024.group_ID IS NOT NULL
    THEN 'yes'
    ELSE 'no'
  END AS has_participated
FROM genre g
-- Συνδέουμε με artist αν υπάρχει artist_ID
LEFT JOIN artist a
  ON g.artist_ID = a.artist_ID
-- Συνδέουμε με group αν υπάρχει group_ID
LEFT JOIN `group` gr
  ON g.group_ID = gr.group_ID
-- Υπο‐ερώτημα για artists που έπαιξαν το 2024
LEFT JOIN (
  SELECT DISTINCT p.artist_ID
  FROM performances p
  JOIN events e ON p.event_ID = e.event_ID
  JOIN festival f ON e.festival_ID = f.festival_ID
  WHERE YEAR(f.starting_date) = 2024
) AS art2024
  ON a.artist_ID = art2024.artist_ID
-- Υπο‐ερώτημα για groups που έπαιξαν το 2024
LEFT JOIN (
  SELECT DISTINCT p.group_ID
  FROM performances p
  JOIN events e ON p.event_ID = e.event_ID
  JOIN festival f ON e.festival_ID = f.festival_ID
  WHERE YEAR(f.starting_date) = 2024
) AS grp2024
  ON gr.group_ID = grp2024.group_ID
WHERE
  g.genre_name = 'rock';
