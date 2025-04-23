import mysql.connector
import random
from datetime import datetime, timedelta
from faker import Faker
#nikos
def clear_all(conn,cursor):
    # === Clear all tables (in dependency-safe order) ===
    cursor.execute("SET FOREIGN_KEY_CHECKS = 0")

    tables = [
        "role_of_personel_on_event",
        "performances",
        "events",
        "artist",
        "personel",
        "building",
        "festival_location",
        "festival"
    ]

    for table in tables:
        cursor.execute(f"DELETE FROM {table}")
        cursor.execute(f"ALTER TABLE {table} AUTO_INCREMENT = 1")

    cursor.execute("SET FOREIGN_KEY_CHECKS = 1")
    conn.commit()
    print("🔄 Database cleared!")


fake = Faker()

# Σύνδεση με τη βάση
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="db1"
)
cursor = conn.cursor()
clear_all(conn,cursor)
# === Helper ===
def random_time():
    hour = random.randint(10, 22)
    minute = random.choice([0, 15, 30, 45])
    return f"{hour:02d}:{minute:02d}:00"

# === 1. Festival ===
festival_ids = []
for year in range(2020, 2025):
    starting_date = datetime(year, random.randint(5, 9), random.randint(1, 28)).date()  # καλοκαιρινό περίπου
    duration = random.randint(2, 5)
    cursor.execute("INSERT INTO festival (starting_date, duration) VALUES (%s, %s)", (starting_date, duration))
    festival_ids.append(cursor.lastrowid)


# === 2. Festival Locations ===
for fid in festival_ids:
    cursor.execute("""
        INSERT INTO festival_location (festival_ID, address, town, country, continent, geo_coordinates)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        fid,
        fake.street_address(),
        fake.city(),
        fake.country(),
        'Europe',
        f"{fake.latitude()},{fake.longitude()}"
    ))

# === 3. Buildings ===
building_ids = []
for _ in range(5):
    cursor.execute("""
        INSERT INTO building (building_name, building_description, max_capacity, technical_equipment)
        VALUES (%s, %s, %s, %s)
    """, (
        fake.company(),
        fake.text(),
        random.randint(100, 1000),
        ', '.join(fake.words(nb=5))
    ))
    building_ids.append(cursor.lastrowid)

# === 4. Personel ===
personel_ids = []
levels = ['intern', 'beginer', 'intermidiate', 'experienced', 'very_experienced']
for _ in range(10):
    cursor.execute("""
        INSERT INTO personel (first_name, last_name, age, email, phone_number, expertise_status)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        fake.first_name(),
        fake.last_name(),
        random.randint(20, 60),
        fake.email(),
        fake.phone_number(),
        random.choice(levels)
    ))
    personel_ids.append(cursor.lastrowid)

# === 5. Artists ===
artist_ids = []
genres = ['rock', 'pop', 'jazz', 'electronic', 'hip hop']
for _ in range(8):
    dob = fake.date_of_birth(minimum_age=20, maximum_age=50)
    debut = dob + timedelta(days=365 * random.randint(1, 20))
    cursor.execute("""
        INSERT INTO artist (artist_name, stage_name, date_of_birth, music_genre, website, instagram, group_name, date_of_debut)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        fake.name(),
        fake.first_name() if random.random() < 0.7 else None,
        dob,
        random.choice(genres),
        fake.url(),
        fake.url(),
        fake.last_name() + " Band",
        debut
    ))
    artist_ids.append(cursor.lastrowid)


# === Events: για κάθε μέρα του φεστιβάλ (0 έως duration - 1) ===
event_ids = []
for fid in festival_ids:
    # Πάρε duration του συγκεκριμένου φεστιβάλ από τη βάση
    cursor.execute("SELECT duration FROM festival WHERE festival_ID = %s", (fid,))
    duration = cursor.fetchone()[0]
    
    for festival_day in range(1,duration+1):
        end_time = "08:00:00"
        for _ in range(random.randint(1, 3)):  # events ανά μέρα
            start_time = (datetime.strptime(end_time, "%H:%M:%S")+ timedelta(hours=random.randint(1, 3))).time().strftime("%H:%M:%S")
            end_time = (datetime.strptime(start_time, "%H:%M:%S") + timedelta(hours=2)).time().strftime("%H:%M:%S")
            cursor.execute("""
                INSERT INTO events (festival_ID, event_name, festival_day, start_time, end_time, event_building)
                VALUES (%s, %s, %s, %s, %s, %s)
            """, (
                fid,
                f"{fake.word().capitalize()} Concert",
                festival_day,
                start_time,
                end_time,
                random.choice(building_ids)
            ))
            event_ids.append(cursor.lastrowid)

def timedelta_to_str(t):
    total_seconds = int(t.total_seconds())
    hours = total_seconds // 3600
    minutes = (total_seconds % 3600) // 60
    seconds = total_seconds % 60
    return f"{hours:02}:{minutes:02}:{seconds:02}"

# === 7. Performances ===
performance_ids = []  # <== πρόσθεσέ το πριν τη for

for eid in event_ids:
    cursor.execute("SELECT start_time, end_time FROM events WHERE event_ID = %s", (eid,))
    start_str, end_str = [timedelta_to_str(t) for t in cursor.fetchone()]
    start_dt = datetime.strptime(start_str, "%H:%M:%S")
    end_dt = datetime.strptime(end_str, "%H:%M:%S")
    
    current_time = start_dt
    performance_count = random.randint(1, 3)

    for i in range(performance_count):
        duration = timedelta(minutes=random.randint(30, 90))
        if current_time + duration > end_dt:
            break

        performance_time_str = current_time.time().strftime("%H:%M:%S")
        ptype = random.choice(['warm up', 'headline', 'special_guest', 'finale'])
        cursor.execute("""
            INSERT INTO performances (event_ID, performance_time, building_name, performance_duration, performance_type)
            VALUES (%s, %s, %s, %s, %s)
        """, (
            eid,
            performance_time_str,
            fake.company(),
            int(duration.total_seconds() / 60),
            ptype
        ))
        
        # ✅ Αποθήκευση performance_ID
        performance_ids.append(cursor.lastrowid)

        current_time += duration


# === 8. Role of Personel on Event (many-to-many) ===
roles = ['techincal', 'security', 'support']
personel_event_roles = set()

for eid in event_ids:
    involved = random.sample(personel_ids, k=random.randint(2, 4))
    for pid in involved:
        if (pid, eid) not in personel_event_roles:
            role = random.choice(roles)
            cursor.execute("""
                INSERT INTO role_of_personel_on_event (personel_ID, event_ID, role)
                VALUES (%s, %s, %s)
            """, (pid, eid, role))
            personel_event_roles.add((pid, eid))


# Commit all changes
#marina's bit
# === 9. Visitors ===
visitor_ids = []
for _ in range(10):
    cursor.execute("""
        INSERT INTO visitor (first_name, last_name, telephone, email, age)
        VALUES (%s, %s, %s, %s, %s)
    """, (
        fake.first_name(),
        fake.last_name(),
        fake.phone_number(),
        fake.email(),
        random.randint(18, 65)
    ))
    visitor_ids.append(cursor.lastrowid)
# === 10. Artist performances ===
artist_perf_pairs = set()

for pid in performance_ids:
    selected_artists = random.sample(artist_ids, k=random.randint(1, 2))
    for aid in selected_artists:
        if (aid, pid) not in artist_perf_pairs:
            cursor.execute("""
                INSERT INTO artist_performances (artist_id, performance_ID)
                VALUES (%s, %s)
            """, (aid, pid))
            artist_perf_pairs.add((aid, pid))


# === 11. Buyer ===
buyer_ids = []
for _ in range(10):
    cursor.execute("""
        INSERT INTO buyer (name, email)
        VALUES (%s, %s)
    """, (fake.name(), fake.email()))
    buyer_ids.append(cursor.lastrowid)

# === 12. Tickets ===
ticket_ids = []
ticket_types = ['general_admission', 'VIP', 'backstage']
payment_methods = ['debit_card', 'credit_card', 'I-BAN']

for _ in range(15):
    cursor.execute("""
        INSERT INTO ticket (event_ID, visitor_ID, ticket_type, purchase_date, purchase_price, payment_method, activated_status)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, (
        random.choice(event_ids),
        random.choice(visitor_ids),
        random.choice(ticket_types),
        fake.date_between(start_date='-30d', end_date='today'),
        round(random.uniform(20.0, 100.0), 2),
        random.choice(payment_methods),
        random.choice([True, False])
    ))
    ticket_ids.append(cursor.lastrowid)




# === 13. Seller ===
if False:
    seller_ids = []
    for _ in range(10):
        cursor.execute("""
            INSERT INTO seller (visitor_ID, email)
            VALUES (%s, %s)
        """, (fake.name(), fake.email()))
        seller_ids.append(cursor.lastrowid)


# === 16. Resale queue ===
for tid in random.sample(ticket_ids, k=5):  # Επιλέγουμε κάποια εισιτήρια προς μεταπώληση
    cursor.execute("""
        INSERT INTO resale_queue (ticket_ID)
        VALUES (%s)
    """, (tid,))

# === 17. Reviews ===
for tid in ticket_ids:
    cursor.execute("""
        INSERT INTO review (
            ticket_ID, artist_performance, sound_and_lighting,
            stage_presence, event_organization, overall_impression
        ) VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        tid,
        str(random.randint(1, 5)),
        str(random.randint(1, 5)),
        str(random.randint(1, 5)),
        str(random.randint(1, 5)),
        str(random.randint(1, 5))
    ))



conn.commit()
cursor.close()
conn.close()
