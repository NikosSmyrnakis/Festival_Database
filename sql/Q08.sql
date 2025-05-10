SELECT
  p.personel_ID,
  CONCAT (p.first_name, ' ', p.last_name) AS full_name
FROM
  personel p
WHERE
  p.expertise_status IS NOT NULL
  AND NOT EXISTS (
    SELECT
      1
    FROM
      role_of_personel_on_event r
      JOIN events e ON r.event_ID = e.event_ID
    WHERE
      r.personel_ID = p.personel_ID
      AND DATE (e.event_start_time) = '2024-08-10'
  );

-- ok