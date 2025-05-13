WITH
    artist_festival_counts AS (
        SELECT
            'artist'            AS entity_type,
            a.artist_ID         AS entity_ID,
            a.artist_name       AS entity_name,
            COUNT(DISTINCT f.festival_ID) AS participation_count
        FROM artist a
        JOIN performances p ON a.artist_ID = p.artist_ID
        JOIN events e       ON p.event_ID   = e.event_ID
        JOIN festival f     ON e.festival_ID = f.festival_ID
        GROUP BY
            a.artist_ID,
            a.artist_name
    ),
    group_festival_counts AS (
        SELECT
            'group'             AS entity_type,
            gr.group_ID         AS entity_ID,
            gr.group_name       AS entity_name,
            COUNT(DISTINCT f.festival_ID) AS participation_count
        FROM `group` gr
        JOIN performances p ON gr.group_ID = p.group_ID
        JOIN events e       ON p.event_ID   = e.event_ID
        JOIN festival f     ON e.festival_ID = f.festival_ID
        GROUP BY
            gr.group_ID,
            gr.group_name
    ),
    entity_festival_counts AS (
        SELECT * FROM artist_festival_counts
        UNION ALL
        SELECT * FROM group_festival_counts
    ),
    max_participation AS (
        SELECT
            MAX(participation_count) AS max_count
        FROM entity_festival_counts
    )
SELECT
    efc.entity_type,
    efc.entity_ID,
    efc.entity_name,
    efc.participation_count
FROM
    entity_festival_counts efc
    CROSS JOIN max_participation mp
WHERE
    efc.participation_count >= mp.max_count - 5
    AND efc.participation_count < mp.max_count
ORDER BY
    efc.participation_count DESC;
