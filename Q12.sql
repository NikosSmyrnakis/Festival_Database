SELECT 
    f.festival_ID,
    e.festival_day,
    r.role,
    COUNT(DISTINCT r.personel_ID) AS required_personnel
FROM role_of_personel_on_event r
JOIN events e ON r.event_ID = e.event_ID
JOIN festival f ON e.festival_ID = f.festival_ID
GROUP BY f.festival_ID, e.festival_day, r.role
ORDER BY f.festival_ID, e.festival_day, r.role;