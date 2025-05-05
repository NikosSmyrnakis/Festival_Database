Βρείτε το προσωπικό υποστήριξης που δεν έχει προγραμματισμένη εργασία σε συγκεκριμένη ημερομηνία;

SELECT 
    p.personel_ID,
    p.first_name,
    p.last_name,
    r.role
FROM personel p
WHERE p.expertise_status IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM role_of_personel_on_event r
      JOIN events e ON r.event_ID = e.event_ID
      WHERE r.personel_ID = p.personel_ID
        AND r.role = 'support'
        AND DATE(e.event_start_time) = '2024-08-10'
  );