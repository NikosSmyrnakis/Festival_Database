WITH
    -- Genre–year counts for artists
    artist_genre_year_counts AS (
        SELECT
            g.genre_name,
            YEAR(f.starting_date) AS year,
            COUNT(*)            AS appearances
        FROM genre      g
        JOIN artist     a  ON g.artist_ID = a.artist_ID
        JOIN performances p ON p.artist_ID = a.artist_ID
        JOIN events     e  ON p.event_ID   = e.event_ID
        JOIN festival   f  ON e.festival_ID = f.festival_ID
        GROUP BY
            g.genre_name,
            YEAR(f.starting_date)
        HAVING
            COUNT(*) >= 3
    ),

    -- Genre–year counts for groups
    group_genre_year_counts AS (
        SELECT
            g.genre_name,
            YEAR(f.starting_date) AS year,
            COUNT(*)            AS appearances
        FROM genre      g
        JOIN `group`    gr ON g.group_ID = gr.group_ID
        JOIN performances p  ON p.group_ID = gr.group_ID
        JOIN events     e  ON p.event_ID   = e.event_ID
        JOIN festival   f  ON e.festival_ID = f.festival_ID
        GROUP BY
            g.genre_name,
            YEAR(f.starting_date)
        HAVING
            COUNT(*) >= 3
    ),

    -- Union both sets into one CTE
    genre_year_counts AS (
        SELECT * FROM artist_genre_year_counts
        UNION ALL
        SELECT * FROM group_genre_year_counts
    )

SELECT
    g1.genre_name,
    g1.year   AS year1,
    g2.year   AS year2,
    g1.appearances
FROM
    genre_year_counts g1
    JOIN genre_year_counts g2
      ON g1.genre_name = g2.genre_name
     AND g2.year       = g1.year + 1
     AND g2.appearances = g1.appearances
ORDER BY
    g1.genre_name,
    g1.year;
