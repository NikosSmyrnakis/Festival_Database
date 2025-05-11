SELECT
    p.artist_ID,
    p.group_ID,
    a.artist_name,
    gr.group_name,
    f.festival_ID,
    COUNT(*) AS warm_up_count
FROM
    performances p
    LEFT JOIN artist  a  ON p.artist_ID = a.artist_ID
    LEFT JOIN `group` gr ON p.group_ID  = gr.group_ID
    JOIN events  e  ON p.event_ID = e.event_ID
    JOIN festival f  ON e.festival_ID = f.festival_ID
WHERE
    p.performance_type = 'warm up'
GROUP BY
    p.artist_ID,
    p.group_ID,
    f.festival_ID
HAVING
    COUNT(*) > 2
ORDER BY
    warm_up_count DESC;
