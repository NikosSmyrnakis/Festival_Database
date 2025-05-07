import mysql.connector
from datetime import datetime, timedelta

# --- Σύνδεση ---
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="db1"
)
cursor = conn.cursor()

# === Καλλιτέχνες ===
artist_data = [
    ("Adele Adkins", "Adele", "1988-05-05"),
    ("Kendrick Lamar", "K.Dot", "1987-06-17"),
    ("Ed Sheeran", "Teddy", "1991-02-17")
]

artist_ids = []
for name, stage_name, birthdate in artist_data:
    cursor.execute("""
        INSERT INTO artist (artist_name, stage_name, artist_date_of_birth, artist_website, artist_instagram, artist_debute)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        name,
        stage_name,
        birthdate,
        f"https://{stage_name.lower()}.com",
        f"https://instagram.com/{stage_name.lower()}",
        '2010-01-01'
    ))
    artist_ids.append(cursor.lastrowid)

# === Δημιουργία 10 φεστιβάλ σε διαφορετικές ηπείρους ===
continents = [
    ("Europe", "Berlin", "Germany"),
    ("Asia", "Tokyo", "Japan"),
    ("America", "New York", "USA"),
    ("Africa", "Cape Town", "South Africa"),
    ("Oceania", "Sydney", "Australia"),
    ("Antarctica", "McMurdo", "Antarctica"),
    ("South America", "São Paulo", "Brazil"),
    ("Australia", "Melbourne", "Australia"),
    ("North America", "Toronto", "Canada"),
    ("Middle East", "Dubai", "UAE")
]

festival_ids = []
for i in range(10):
    city = continents[i][1]
    country = continents[i][2]
    continent = continents[i][0]

    cursor.execute("INSERT INTO festival (starting_date, duration) VALUES (%s, %s)", 
                   (datetime(2020+i, 7, 10).date(), 3))
    fid = cursor.lastrowid
    festival_ids.append(fid)

    cursor.execute("""
        INSERT INTO festival_location (festival_ID, address, town, country, continent, geo_coordinates)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        fid,
        f"{i+10} Main St",
        city,
        country,
        continent,
        f"{-33.0 + i},{151.0 + i}"  # fake geo coords
    ))

# === Κτίριο ===
cursor.execute("""
    INSERT INTO building (building_name, building_description, max_capacity, technical_equipment)
    VALUES ('Global Stage', 'Multi-purpose performance venue', 500, 'sound,lighting,video')
""")
building_id = cursor.lastrowid

# === Αντιστοιχίσεις ===
artist_festival_map = {
    artist_ids[0]: [festival_ids[0]],                      # Adele - 1 φεστιβάλ
    artist_ids[1]: [festival_ids[1], festival_ids[2]],     # Kendrick - 2 φεστιβάλ
    artist_ids[2]: festival_ids                            # Ed - 10 φεστιβάλ
}

# === Events & Performances ===
for artist_id, fids in artist_festival_map.items():
    for fid in fids:
        event_start = datetime(2025, 8, 1, 18, 0, 0)
        event_end = event_start + timedelta(hours=3)
        cursor.execute("""
            INSERT INTO events (festival_ID, event_name, festival_day, event_start_time, event_end_time, building_ID)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (
            fid,
            f"Live Session {fid}",
            1,
            event_start,
            event_end,
            building_id
        ))
        event_id = cursor.lastrowid

        # 3 warm-up performances
        for i in range(3):
            start = event_start + timedelta(minutes=i * 30)
            end = start + timedelta(minutes=25)
            cursor.execute("""
                INSERT INTO performances (event_ID, performance_type, performance_start_time, performance_end_time, 
                                          building_ID, building_name, artist_ID)
                VALUES (%s, 'warm up', %s, %s, %s, %s, %s)
            """, (
                event_id,
                start,
                end,
                building_id,
                'Global Stage',
                artist_id
            ))

# === Τέλος ===
conn.commit()
cursor.close()
conn.close()

print("✅ Realistic test data created with max participation count = 10.")

#gfff