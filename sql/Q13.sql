-- Artists
SELECT
    'artist'               AS entity_type,
    a.artist_ID            AS entity_ID,
    a.artist_name          AS entity_name,
    COUNT(DISTINCT fl.continent) AS continent_count
FROM artist a
JOIN performances p   ON p.artist_ID    = a.artist_ID
JOIN events e         ON p.event_ID     = e.event_ID
JOIN festival_location fl ON e.festival_ID = fl.festival_ID
GROUP BY
    a.artist_ID,
    a.artist_name
HAVING
    COUNT(DISTINCT fl.continent) >= 3

UNION ALL

-- Groups
SELECT
    'group'                AS entity_type,
    gr.group_ID            AS entity_ID,
    gr.group_name          AS entity_name,
    COUNT(DISTINCT fl.continent) AS continent_count
FROM `group` gr
JOIN performances p   ON p.group_ID     = gr.group_ID
JOIN events e         ON p.event_ID     = e.event_ID
JOIN festival_location fl ON e.festival_ID = fl.festival_ID
GROUP BY
    gr.group_ID,
    gr.group_name
HAVING
    COUNT(DISTINCT fl.continent) >= 3
;
