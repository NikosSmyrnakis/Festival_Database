-- === Insert_Q11_test.sql ===
-- Δημιουργία καλλιτεχνών
INSERT INTO artist (artist_name, artist_date_of_birth)
VALUES 
('Anna Rhythm', '1996-05-20'),
('Ben Flow', '1992-09-15'),
('Cleo Wave', '1989-12-01'),
('David Beat', '1995-07-07'),
('Eva Sound', '1997-11-30'),
('Luna Ray', '1993-04-17'),
('Max Tempo', '1990-10-22'),
('Zoe Pulse', '1994-02-18'),
('Theo Vibe', '1991-08-09');

-- Δημιουργία φεστιβάλ
INSERT INTO festival (starting_date, duration)
VALUES
('2022-08-01', 3),
('2023-07-10', 2),
('2024-06-15', 3),
('2024-09-20', 2),
('2025-05-05', 3),
('2025-07-10', 2),
('2025-08-15', 2),
('2025-09-01', 1),
('2025-10-01', 1),
('2025-11-01', 1);

-- Δημιουργία κτιρίου (απαιτείται για τα events)
INSERT INTO building (building_name, building_description, max_capacity, technical_equipment)
VALUES
('Test Stage', 'Default stage', 1000, 'Basic lights and sound');

-- Δημιουργία events
INSERT INTO events (festival_ID, event_name, festival_day, event_start_time, event_end_time, building_ID)
VALUES
((SELECT festival_ID FROM festival WHERE starting_date = '2022-08-01'), 'Event 1', 1, '2022-08-01 18:00:00', '2022-08-01 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2023-07-10'), 'Event 2', 1, '2023-07-10 18:00:00', '2023-07-10 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2024-06-15'), 'Event 3', 1, '2024-06-15 18:00:00', '2024-06-15 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2024-09-20'), 'Event 4', 1, '2024-09-20 18:00:00', '2024-09-20 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2025-05-05'), 'Event 5', 1, '2025-05-05 18:00:00', '2025-05-05 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2025-07-10'), 'Event 6', 1, '2025-07-10 18:00:00', '2025-07-10 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2025-08-15'), 'Event 7', 1, '2025-08-15 18:00:00', '2025-08-15 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2025-09-01'), 'Event 8', 1, '2025-09-01 18:00:00', '2025-09-01 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2025-10-01'), 'Event 9', 1, '2025-10-01 18:00:00', '2025-10-01 21:00:00', 1),
((SELECT festival_ID FROM festival WHERE starting_date = '2025-11-01'), 'Event 10', 1, '2025-11-01 18:00:00', '2025-11-01 21:00:00', 1);

-- Δημιουργία performances για Cleo Wave (σε όλα τα φεστιβάλ)
INSERT INTO performances (event_ID, performance_type, performance_start_time, performance_end_time, building_ID, building_name, artist_ID)
SELECT e.event_ID, 'headline', e.event_start_time, e.event_end_time, 1, 'Test Stage', a.artist_ID
FROM events e
JOIN artist a ON a.artist_name = 'Cleo Wave'
WHERE e.event_name LIKE 'Event%';

-- Anna Rhythm σε 3 φεστιβάλ
INSERT INTO performances (event_ID, performance_type, performance_start_time, performance_end_time, building_ID, building_name, artist_ID)
SELECT e.event_ID, 'headline', e.event_start_time, e.event_end_time, 1, 'Test Stage', a.artist_ID
FROM events e
JOIN artist a ON a.artist_name = 'Anna Rhythm'
WHERE e.event_name IN ('Event 1', 'Event 2', 'Event 3');

-- Luna Ray σε 5 φεστιβάλ
INSERT INTO performances (event_ID, performance_type, performance_start_time, performance_end_time, building_ID, building_name, artist_ID)
SELECT e.event_ID, 'headline', e.event_start_time, e.event_end_time, 1, 'Test Stage', a.artist_ID
FROM events e
JOIN artist a ON a.artist_name = 'Luna Ray'
WHERE e.event_name IN ('Event 6', 'Event 7', 'Event 8', 'Event 9', 'Event 10');

-- Max Tempo σε 2 φεστιβάλ
INSERT INTO performances (event_ID, performance_type, performance_start_time, performance_end_time, building_ID, building_name, artist_ID)
SELECT e.event_ID, 'headline', e.event_start_time, e.event_end_time, 1, 'Test Stage', a.artist_ID
FROM events e
JOIN artist a ON a.artist_name = 'Max Tempo'
WHERE e.event_name IN ('Event 4', 'Event 5');

-- Zoe Pulse σε 8 φεστιβάλ
INSERT INTO performances (event_ID, performance_type, performance_start_time, performance_end_time, building_ID, building_name, artist_ID)
SELECT e.event_ID, 'headline', e.event_start_time, e.event_end_time, 1, 'Test Stage', a.artist_ID
FROM events e
JOIN artist a ON a.artist_name = 'Zoe Pulse'
WHERE e.event_name IN ('Event 1','Event 2','Event 3','Event 4','Event 5','Event 6','Event 7','Event 8');

-- Theo Vibe σε 6 φεστιβάλ
INSERT INTO performances (event_ID, performance_type, performance_start_time, performance_end_time, building_ID, building_name, artist_ID)
SELECT e.event_ID, 'headline', e.event_start_time, e.event_end_time, 1, 'Test Stage', a.artist_ID
FROM events e
JOIN artist a ON a.artist_name = 'Theo Vibe'
WHERE e.event_name IN ('Event 3','Event 4','Event 5','Event 6','Event 7','Event 9');
