SELECT
    f.festival_ID,
    AVG(
        CASE p.expertise_status
            WHEN 'intern' THEN 1
            WHEN 'beginer' THEN 2
            WHEN 'intermidiate' THEN 3
            WHEN 'experienced' THEN 4
            WHEN 'very_experienced' THEN 5
        END
    ) AS avg_expertise_score
FROM
    role_of_personel_on_event r
    JOIN personel p ON r.personel_ID = p.personel_ID
    JOIN events e ON r.event_ID = e.event_ID
    JOIN festival f ON e.festival_ID = f.festival_ID
WHERE
    r.role = 'technical'
GROUP BY
    f.festival_ID
ORDER BY
    avg_expertise_score ASC
LIMIT
    1;

-- ok