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
        "artist_performances",
        "buyer",
        "resale_queue",
        "review",
        "ticket",
        "seller",
        "visitor",
        "personel",
        "building",
        "festival_location",
        "festival",
        "temp_resale_matches"
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
for building_id in random.sample(building_ids, k=random.randint(len(building_ids)-2, len(building_ids))):
    for fid in festival_ids:
        # Πάρε duration του συγκεκριμένου φεστιβάλ από τη βάση
        cursor.execute("SELECT duration FROM festival WHERE festival_ID = %s", (fid,))
        duration = cursor.fetchone()[0]
        
        for festival_day in range(1,duration+1):
            end_time = "08:00:00"
            for _ in range(random.randint(2, 4)):  # events ανά μέρα
                start_time = (datetime.strptime(end_time, "%H:%M:%S")+ timedelta(minutes=random.randint(20, 100))).time().strftime("%H:%M:%S")
                end_time = (datetime.strptime(start_time, "%H:%M:%S") + timedelta(minutes=random.randint(181, 220))).time().strftime("%H:%M:%S")
                cursor.execute("""
                    INSERT INTO events (festival_ID, event_name, festival_day, start_time, end_time, building_ID)
                    VALUES (%s, %s, %s, %s, %s, %s)
                """, (
                    fid,
                    f"{fake.word().capitalize()} Concert",
                    festival_day,
                    start_time,
                    end_time,
                    building_id
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
    cursor.execute("SELECT building_ID FROM events WHERE event_ID = %s", (eid,))
    building_id = cursor.fetchone()[0]
    cursor.execute("SELECT building_name FROM building WHERE building_ID = (SELECT building_ID FROM events WHERE event_ID = %s)", (eid,))
    building_name = cursor.fetchone()[0]
    current_time = start_dt
    performance_count = random.randint(1, 3)

    for i in range(performance_count):
        duration = timedelta(minutes=random.randint(30, 180))
        if current_time + duration > end_dt:
            break

        performance_start_time_str = current_time.time().strftime("%H:%M:%S")
        performance_end_time_str = (current_time.time() + duration).strftime("%H:%M:%S")
        ptype = random.choice(['warm up', 'headline', 'special_guest', 'finale'])
        cursor.execute("""
            INSERT INTO performances (event_ID, performance_start_time, performace_end_time, building_name, building_ID, performance_type)
            VALUES (%s, %s, %s, %s)
        """, (
            eid,
            performance_start_time_str,
            performance_end_time_str,
            building_name,
            building_id,
            ptype
        ))
        
        # ✅ Αποθήκευση performance_ID
        performance_ids.append(cursor.lastrowid)

        current_time += duration + timedelta(minutes=random.randint(5, 15))  # Διάλειμμα μεταξύ performances


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
if(False):
    buyer_ids = []
    for _ in range(10):
        cursor.execute("""
            INSERT INTO buyer (name, email)
            VALUES (%s, %s)
        """, (fake.name(), fake.email()))
        buyer_ids.append(cursor.lastrowid)


def random_ticket_date(event_id):
    cursor.execute("SELECT festival_ID FROM events WHERE event_ID = %s", (event_id,))
    festival_id = cursor.fetchone()[0]
    cursor.execute("SELECT starting_date FROM festival WHERE festival_ID = %s", (festival_id,))
    start_date = cursor.fetchone()[0]  # should be a datetime.date
    days_before = random.randint(6, 10)
    date_before = start_date - timedelta(days=days_before)
    return date_before

# === 12. Tickets ===
ticket_ids = []
ticket_types = ['general_admission', 'VIP', 'backstage']
payment_methods = ['debit_card', 'credit_card', 'I-BAN']

for _ in range(35):
    visitor_id = random.choice(visitor_ids)
    event_id = random.choice(event_ids)
    
    # Πριν διαλέξουμε τυχαίο τύπο, ελέγχουμε αν μπορούμε να βάλουμε VIP
    cursor.execute("SELECT COUNT(*) FROM ticket WHERE event_ID = %s", (event_id,))
    total_tickets = cursor.fetchone()[0]
    
    cursor.execute("SELECT COUNT(*) FROM ticket WHERE event_ID = %s AND ticket_type = 'VIP'", (event_id,))
    vip_tickets = cursor.fetchone()[0]

    if total_tickets == 0:
        # Αν δεν υπάρχουν άλλα tickets, βάζουμε γενική είσοδο
        allowed_ticket_types = ['general_admission', 'backstage']
    else:
        # Αν το VIPs <= 10% * total, το επιτρέπουμε
        if (vip_tickets + 1) <= 0.1 * (total_tickets + 1):
            allowed_ticket_types = ['general_admission', 'VIP', 'backstage']
        else:
            allowed_ticket_types = ['general_admission', 'backstage']

    ticket_type = random.choice(allowed_ticket_types)
    activated_ticket = random.choice([True, False])

    cursor.execute("""
        INSERT IGNORE INTO ticket (event_ID, visitor_ID, ticket_type, purchase_date, purchase_price, payment_method, activated_status)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, (
        event_id,
        visitor_id,
        ticket_type,
        random_ticket_date(event_id),
        round(random.uniform(20.0, 100.0), 2),
        random.choice(payment_methods),
        activated_ticket
    ))
    ticket_ids.append([cursor.lastrowid, event_id, visitor_id, ticket_type, activated_ticket])




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
sellers_t_ids = []
k = 0
for ticket in random.sample(ticket_ids, k=30): 
    ticket_id, event_id, visitor_id, ticket_type, activated = ticket
    if not activated:
        # Get event name from event_id
        cursor.execute("SELECT purchase_date FROM ticket WHERE ticket_ID = %s", (ticket_id,))
        purchase_date = cursor.fetchone()[0]
        base_date = datetime.combine(purchase_date, datetime.min.time())
        # Generate time and subtract days
        days_before = random.randint(2, 10)
        hour = random.randint(12, 22)
        minute = random.choice([0, 15, 30, 45])
        # Final datetime
        date_before = (base_date - timedelta(days=days_before)).replace(hour=hour, minute=minute, second=0, microsecond=0)
        
        cursor.execute("SELECT event_name FROM events WHERE event_ID = %s", (event_id,))
        event_name = cursor.fetchone()[0]

        # Insert into resale queue using the visitor as the seller
        # Increment pending_orders_seller ot buyer for that visitor
        if random.random() < 0.7:
            #if seller
            k+=1
            cursor.execute("""
                INSERT INTO resale_queue (ticket_ID, seller_ID, event_name, ticket_type, listed_at)
                VALUES (%s, %s, %s, %s, %s)
             """, (ticket_id, visitor_id, event_name, ticket_type, date_before))
            cursor.execute("""
                UPDATE seller SET pending_orders_seller = pending_orders_seller + 1
                WHERE visitor_ID = %s
            """, (visitor_id,))
            sellers_t_ids.append(ticket_id)
        else:
            #if buyer
            if random.random() < 0.5 or k == 0:
                cursor.execute("""
                    INSERT INTO resale_queue (buyer_ID, event_name, ticket_type, listed_at)
                    VALUES (%s, %s, %s, %s)
                """, (visitor_id, event_name, ticket_type, date_before))
            else:
                temp_id = random.choice(sellers_t_ids)
                cursor.execute("""
                    INSERT INTO resale_queue (ticket_ID, buyer_ID, listed_at)
                    VALUES (%s, %s, %s)
                """, (temp_id, visitor_id, date_before))
                sellers_t_ids.remove(temp_id)
                k-= 1
            cursor.execute("""
                UPDATE buyer SET pending_orders_buyer = pending_orders_buyer + 1
                WHERE visitor_ID = %s
            """, (visitor_id,))
    

# === 17. Reviews ===
for ticket in ticket_ids:
    ticket_id = ticket[0]
    activated_status = ticket[4]  # Στο ticket_ids έχεις και το activated status

    if activated_status:  # Μόνο αν είναι ενεργό
        cursor.execute("""
            INSERT INTO review (ticket_ID, artist_performance, sound_and_lighting, stage_presence, event_organization, overall_impression)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (
            ticket_id,
            str(random.randint(1, 5)),
            str(random.randint(1, 5)),
            str(random.randint(1, 5)),
            str(random.randint(1, 5)),
            str(random.randint(1, 5))
        ))




conn.commit()
cursor.close()
conn.close()
