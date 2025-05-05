-- === Insert_Q11_test.sql ===
-- Δημιουργία καλλιτεχνών
INSERT INTO artist (artist_ID, artist_name, artist_date_of_birth)
VALUES 
(1, 'Anna Rhythm', '1996-05-20'),
(2, 'Ben Flow', '1992-09-15'),
(3, 'Cleo Wave', '1989-12-01'),
(4, 'David Beat', '1995-07-07'),
(5, 'Eva Sound', '1997-11-30');

-- Δημιουργία φεστιβάλ
INSERT INTO festival (festival_ID, starting_date, duration)
VALUES
(1, '2022-08-01', 3),
(2, '2023-07-10', 2),
(3, '2024-06-15', 3),
(4, '2024-09-20', 2),
(5, '2025-05-05', 3),
(6, '2025-07-10', 2),
(7, '2025-08-15', 2),
(8, '2025-09-01', 1),
(9, '2025-10-01', 1),
(10, '2025-11-01', 1);

-- Δημιουργία κτιρίου (απαιτείται για τα events)
INSERT INTO building (building_ID, building_name, building_description, max_capacity, technical_equipment)
VALUES
(1, 'Test Stage', 'Default stage', 1000, 'Basic lights and sound');

-- Δημιουργία events
INSERT INTO events (event_ID, festival_ID, event_name, festival_day, event_start_time, event_end_time, building_ID)
VALUES
(1, 1, 'Event 1', 1, '2022-08-01 18:00:00', '2022-08-01 21:00:00', 1),
(2, 2, 'Event 2', 1, '2023-07-10 18:00:00', '2023-07-10 21:00:00', 1),
(3, 3, 'Event 3', 1, '2024-06-15 18:00:00', '2024-06-15 21:00:00', 1),
(4, 4, 'Event 4', 1, '2024-09-20 18:00:00', '2024-09-20 21:00:00', 1),
(5, 5, 'Event 5', 1, '2025-05-05 18:00:00', '2025-05-05 21:00:00', 1),
(6, 6, 'Event 6', 1, '2025-07-10 18:00:00', '2025-07-10 21:00:00', 1),
(7, 7, 'Event 7', 1, '2025-08-15 18:00:00', '2025-08-15 21:00:00', 1),
(8, 8, 'Event 8', 1, '2025-09-01 18:00:00', '2025-09-01 21:00:00', 1),
(9, 9, 'Event 9', 1, '2025-10-01 18:00:00', '2025-10-01 21:00:00', 1),
(10, 10, 'Event 10', 1, '2025-11-01 18:00:00', '2025-11-01 21:00:00', 1);

-- Δημιουργία performances: Artist 3 (Cleo Wave) σε 10 φεστιβάλ => max συμμετοχές
INSERT INTO performances (performance_ID, event_ID, performance_type, performance_start_time, performance_end_time, building_ID, building_name, artist_ID)
VALUES
(1, 1, 'headline', '2022-08-01 18:00:00', '2022-08-01 20:00:00', 1, 'Test Stage', 3),
(2, 2, 'headline', '2023-07-10 18:00:00', '2023-07-10 20:00:00', 1, 'Test Stage', 3),
(3, 3, 'headline', '2024-06-15 18:00:00', '2024-06-15 20:00:00', 1, 'Test Stage', 3),
(4, 4, 'headline', '2024-09-20 18:00:00', '2024-09-20 20:00:00', 1, 'Test Stage', 3),
(5, 5, 'headline', '2025-05-05 18:00:00', '2025-05-05 20:00:00', 1, 'Test Stage', 3),
(6, 6, 'headline', '2025-07-10 18:00:00', '2025-07-10 20:00:00', 1, 'Test Stage', 3),
(7, 7, 'headline', '2025-08-15 18:00:00', '2025-08-15 20:00:00', 1, 'Test Stage', 3),
(8, 8, 'headline', '2025-09-01 18:00:00', '2025-09-01 20:00:00', 1, 'Test Stage', 3),
(9, 9, 'headline', '2025-10-01 18:00:00', '2025-10-01 20:00:00', 1, 'Test Stage', 3),
(10, 10, 'headline', '2025-11-01 18:00:00', '2025-11-01 20:00:00', 1, 'Test Stage', 3),
-- Artist 1 (Anna Rhythm) σε 3 φεστιβάλ => εμφανίζεται στο τελικό αποτέλεσμα
(11, 1, 'headline', '2022-08-01 18:00:00', '2022-08-01 20:00:00', 1, 'Test Stage', 1),
(12, 2, 'headline', '2023-07-10 18:00:00', '2023-07-10 20:00:00', 1, 'Test Stage', 1),
(13, 3, 'headline', '2024-06-15 18:00:00', '2024-06-15 20:00:00', 1, 'Test Stage', 1);
