-- Festival 1
INSERT INTO festival (starting_date, duration)
VALUES ('2025-08-01', 3);

-- Building 1
INSERT INTO building (
    building_name,
    building_description,
    max_capacity,
    technical_equipment
) VALUES (
    'Main Stage',
    'Central outdoor performance venue',
    5000,
    'Lights, Sound System, LED Screens'
);

-- Artist 1
INSERT INTO artist (
    artist_name, stage_name, artist_date_of_birth, artist_debute,
    artist_genre, artist_subgenre, artist_website, artist_instagram,
    num_of_consecutive_years_participating
) VALUES (
    'Maria Echo', 'Echo', '1995-06-15', '2015-01-01',
    'Pop', 'Synthpop', NULL, NULL, 1
);

-- Events for Festival 1
INSERT INTO events (
    festival_ID, event_name, festival_day, event_start_time, event_end_time, building_ID
) VALUES
(1, 'Opening Night', 1, '2025-08-01 19:00:00', '2025-08-01 23:00:00', 1),
(1, 'Summer Beats', 2, '2025-08-02 19:00:00', '2025-08-02 23:00:00', 1),
(1, 'Finale Vibes', 3, '2025-08-03 19:00:00', '2025-08-03 23:00:00', 1);

-- Performances (warm up x3)
INSERT INTO performances (
    event_ID, performance_type, performance_start_time, performance_end_time,
    building_ID, building_name, artist_ID
) VALUES
(1, 'warm up', '2025-08-01 19:00:00', '2025-08-01 20:00:00', 1, 'Main Stage', 1),
(2, 'warm up', '2025-08-02 19:00:00', '2025-08-02 20:00:00', 1, 'Main Stage', 1),
(3, 'warm up', '2025-08-03 19:00:00', '2025-08-03 20:00:00', 1, 'Main Stage', 1);

-- Festival 2
INSERT INTO festival (starting_date, duration)
VALUES ('2025-09-10', 3);

-- Building 2
INSERT INTO building (
    building_name,
    building_description,
    max_capacity,
    technical_equipment
) VALUES (
    'Fire Arena',
    'Underground electronic stage',
    3000,
    'Lasers, DJ Booth, Surround Audio System'
);

-- Artist 2
INSERT INTO artist (
    artist_name, stage_name, artist_date_of_birth, artist_debute,
    artist_genre, artist_subgenre, artist_website, artist_instagram,
    num_of_consecutive_years_participating
) VALUES (
    'Leonardo Burns', 'Leo Blaze', '1992-03-08', '2012-06-20',
    'Electronic', 'Techno', NULL, NULL, 2
);

-- Events for Festival 2
INSERT INTO events (
    festival_ID, event_name, festival_day, event_start_time, event_end_time, building_ID
) VALUES
(2, 'Ignite Night', 1, '2025-09-10 21:00:00', '2025-09-11 01:00:00', 2),
(2, 'Inferno Beats', 2, '2025-09-11 21:00:00', '2025-09-12 01:00:00', 2),
(2, 'Final Burn', 3, '2025-09-12 21:00:00', '2025-09-13 01:00:00', 2);

-- Performances (warm up x3)
INSERT INTO performances (
    event_ID, performance_type, performance_start_time, performance_end_time,
    building_ID, building_name, artist_ID
) VALUES
(4, 'warm up', '2025-09-10 21:00:00', '2025-09-10 22:00:00', 2, 'Fire Arena', 2),
(5, 'warm up', '2025-09-11 21:00:00', '2025-09-11 22:00:00', 2, 'Fire Arena', 2),
(6, 'warm up', '2025-09-12 21:00:00', '2025-09-12 22:00:00', 2, 'Fire Arena', 2);

-- Festival 3
INSERT INTO festival (starting_date, duration)
VALUES ('2025-10-05', 3);

-- Building 3
INSERT INTO building (
    building_name,
    building_description,
    max_capacity,
    technical_equipment
) VALUES (
    'Skyline Dome',
    'Indoor pop and R&B venue',
    4000,
    'Stage lighting, projectors, surround sound, screens'
);

-- Artist 3
INSERT INTO artist (
    artist_name, stage_name, artist_date_of_birth, artist_debute,
    artist_genre, artist_subgenre, artist_website, artist_instagram,
    num_of_consecutive_years_participating
) VALUES (
    'Nia Taylor', 'Nia Storm', '1997-12-01', '2016-08-01',
    'R&B', 'Neo Soul', NULL, NULL, 3
);

-- Events for Festival 3
INSERT INTO events (
    festival_ID, event_name, festival_day, event_start_time, event_end_time, building_ID
) VALUES
(3, 'Soul Start', 1, '2025-10-05 18:00:00', '2025-10-05 22:00:00', 3),
(3, 'Velvet Night', 2, '2025-10-06 18:00:00', '2025-10-06 22:00:00', 3),
(3, 'Golden Finale', 3, '2025-10-07 18:00:00', '2025-10-07 22:00:00', 3);

-- Performances (warm up x3)
INSERT INTO performances (
    event_ID, performance_type, performance_start_time, performance_end_time,
    building_ID, building_name, artist_ID
) VALUES
(7, 'warm up', '2025-10-05 18:00:00', '2025-10-05 19:00:00', 3, 'Skyline Dome', 3),
(8, 'warm up', '2025-10-06 18:00:00', '2025-10-06 19:00:00', 3, 'Skyline Dome', 3),
(9, 'warm up', '2025-10-07 18:00:00', '2025-10-07 19:00:00', 3, 'Skyline Dome', 3);