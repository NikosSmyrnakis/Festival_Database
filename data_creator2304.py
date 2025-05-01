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
        "`group`",
        "group_members",
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
for year in range(2017, 2027):
    starting_date = datetime(year, random.randint(7, 9), random.randint(1, 28)).date()  # καλοκαιρινό περίπου
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
for _ in range(30):
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
for _ in range(50):
    dob = fake.date_of_birth(minimum_age=20, maximum_age=50)
    debut = dob + timedelta(days=365 * random.randint(1, 20))
    genre1 = random.choice(genres)
    genre2 = random.choice([genre for genre in genres if genre != genre1])
    cursor.execute("""
        INSERT INTO artist (artist_name, stage_name, artist_date_of_birth, artist_genre, artist_website, artist_instagram, artist_debute, artist_subgenre,num_of_consecutive_years_participating)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        fake.name(),
        fake.first_name() if random.random() < 0.7 else None,
        dob,
        genre1,
        fake.url(),
        fake.url(),
        debut,
        genre2,
        random.randint(0,3)
    ))
    artist_ids.append(cursor.lastrowid)

# === GROUPS ===
group_ids = []
for _ in range(15):
    dob = fake.date_of_birth(minimum_age=20, maximum_age=50)
    debut = dob + timedelta(days=365 * random.randint(1, 20))
    genre1 = random.choice(genres)
    genre2 = random.choice([genre for genre in genres if genre != genre1])
    cursor.execute("""
        INSERT INTO `group` (group_name, group_date_of_birth, group_debute, group_genre, group_subgerne, group_website, group_instagram)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, (
        fake.name()+" Band",
        dob,
        debut,
        genre1,
        genre2,
        fake.url(),
        fake.url(),
    ))
    group_ids.append(cursor.lastrowid)

# === Events: για κάθε μέρα του φεστιβάλ (0 έως duration - 1) ===
event_ids = []

for fid in festival_ids:
    # Fetch festival's duration and starting date
    cursor.execute("SELECT duration, starting_date FROM festival WHERE festival_ID = %s", (fid,))
    duration, starting_date = cursor.fetchone()
    
    for festival_day in range(1, duration + 1):
        #for building_id in random.sample(building_ids, k=random.randint(len(building_ids)-2, len(building_ids))):
        end_time = "08:00:00"
        for _ in range(random.randint(1, 4)):  # number of events per day
            for building_id in random.sample(building_ids, k=random.randint(1, 3)):
                # Calculate start and end times
                start_time = (datetime.strptime(end_time, "%H:%M:%S") + timedelta(minutes=random.randint(20, 100))).time().strftime("%H:%M:%S")
                end_time = (datetime.strptime(start_time, "%H:%M:%S") + timedelta(minutes=random.randint(181, 220))).time().strftime("%H:%M:%S")

                # Combine the date and time
                start_datetime = datetime.combine(starting_date, datetime.strptime(start_time, "%H:%M:%S").time()) + timedelta(days=festival_day-1)
                end_datetime = datetime.combine(starting_date, datetime.strptime(end_time, "%H:%M:%S").time()) + timedelta(days=festival_day-1)

                # Insert event into the events table
                cursor.execute("""
                    INSERT INTO events (festival_ID, event_name, festival_day, event_start_time, event_end_time, building_ID)
                    VALUES (%s, %s, %s, %s, %s, %s)
                """, (
                    fid,
                    f"{fake.word().capitalize()} Concert",
                    festival_day,
                    start_datetime,
                    end_datetime,
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
    # Fetch start and end times as DATETIME from the events table
    cursor.execute("SELECT event_start_time, event_end_time FROM events WHERE event_ID = %s", (eid,))
    event_start_time, event_end_time = cursor.fetchone()
    
    # These are already DATETIME, so no need to convert from strings to datetime
    start_dt = event_start_time
    end_dt = event_end_time
    
    # Fetch the building_id and building_name
    cursor.execute("SELECT building_ID FROM events WHERE event_ID = %s", (eid,))
    building_id = cursor.fetchone()[0]
    
    cursor.execute("SELECT building_name FROM building WHERE building_ID = %s", (building_id,))
    building_name = cursor.fetchone()[0]

    # Initialize the current time to start time of the event
    current_time = start_dt
    performance_count = random.randint(1, 3)

    for i in range(performance_count):
        duration = timedelta(minutes=random.randint(30, 120))
        if current_time + duration > end_dt:
            break
        
        performance_start_time = current_time
        performance_end_time = current_time + duration

        ptype = random.choice(['warm up', 'headline', 'special_guest', 'finale'])
        cursor.execute("""
            INSERT INTO performances (event_ID, performance_start_time, performance_end_time, building_name, building_ID, performance_type)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (
            eid,
            performance_start_time,  # DATETIME
            performance_end_time,    # DATETIME
            building_name,
            building_id,
            ptype
        ))
        
        # Save performance_ID
        performance_ids.append(cursor.lastrowid)

        # Move current_time forward with a random break between performances
        current_time += duration + timedelta(minutes=random.randint(5, 15))


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


# === 10. Artist performances/ Group performances ===
if False:
    artist_i = 0 
    group_i = 0
    for pid in performance_ids:
        if random.random() < 0.3:
            aid = artist_ids[artist_i]
            cursor.execute("""
                INSERT INTO artist_performances (artist_ID, performance_ID)
                VALUES (%s, %s)
            """, (aid, pid))
            artist_i+=1
        else:
            gid = group_ids[group_i]
            cursor.execute("""
                INSERT INTO group_performances (group_ID, performance_ID)
                VALUES (%s, %s)
            """, (gid, pid))

for pid in performance_ids:
    while True:
        cursor.execute("""
            SELECT event_ID,performance_start_time, performance_end_time 
            FROM performances 
            WHERE performance_ID = %s
        """, (pid,))
        temp_event_id,performance_start_time,performance_end_time = cursor.fetchone()

        if random.random() < 0.3:  # 50% chance to pick artist or group
            # Randomly select an artist ID
            aid = random.choice(artist_ids)

            # Check if this performance time doesn't overlap with the selected artist's performance
            cursor.execute("""
                SELECT performance_start_time, performance_end_time, event_ID 
                FROM performances 
                WHERE artist_ID = %s
            """, (aid,))
            artist_performances = cursor.fetchall()

            conflict = False
            for start_time, end_time, event_id in artist_performances:
                # Ensure the performance is from the same event and check for time overlap
                if event_id == temp_event_id and (performance_start_time < end_time and performance_end_time > start_time):
                    conflict = True
                    break

            if not conflict:
                cursor.execute("""
                        UPDATE performances
                        SET artist_ID = %s
                        WHERE performance_ID = %s
                    """, (aid, pid))
                break
        
        else:
            # Randomly select a group ID
            gid = random.choice(group_ids)
            
            # Check if this performance time doesn't overlap with the selected group's performance
            cursor.execute("""
                SELECT performance_start_time, performance_end_time, event_ID 
                FROM performances 
                WHERE group_ID = %s
            """, (gid,))
            group_performances = cursor.fetchall()

            conflict = False
            for start_time, end_time, event_id in group_performances:
                # Ensure the performance is from the same event and check for time overlap
                if event_id == pid and (performance_start_time < end_time and performance_end_time > start_time):
                    conflict = True
                    break

            if not conflict:
                cursor.execute("""
                        UPDATE performances
                        SET group_ID = %s
                        WHERE performance_ID = %s
                    """, (gid, pid))
                break

# === group_members ===
group_members_ids = []
cursor.execute("SELECT group_ID FROM `group`")
group_ids = [row[0] for row in cursor.fetchall()]

cursor.execute("SELECT artist_ID FROM artist")
artist_ids = [row[0] for row in cursor.fetchall()]

# Insert random artist_id and group_id into group_members
for group_id in random.sample(group_ids, k=len(group_ids)):  # Iterate through group_ids
    for artist_id in random.sample(artist_ids, k=random.randint(2, 5)):  # Randomly assign 1-3 artists per group
        cursor.execute("""
            INSERT INTO group_members (group_ID, artist_ID)
            VALUES (%s, %s)
        """, (group_id, artist_id))
        
        # Store the last inserted group_member_ID
        group_member_id = cursor.lastrowid
        group_members_ids.append(group_member_id)  # Append the ID to the list



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
    today_date = datetime.today().date()
    activate_status = random.random() < 0.9 # 90% chance to be actiavted if the festival has happened
    if start_date > today_date:
        activate_status = False # if the festival has not happened yet, the ticket cannot be activated
    days_before = random.randint(6, 10)
    date_before = start_date - timedelta(days=days_before)
    if date_before > today_date:
        return today_date - timedelta(days=days_before), activate_status
    else:
        return date_before, activate_status

# === 12. Tickets ===
ticket_ids = []
ticket_types = ['general_admission', 'VIP', 'backstage']
payment_methods = ['debit_card', 'credit_card', 'I-BAN']

for _ in range(220):
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
    purchase_date, activated_ticket = random_ticket_date(event_id)

    cursor.execute("""
        INSERT IGNORE INTO ticket (event_ID, visitor_ID, ticket_type, purchase_date, purchase_price, payment_method, activated_status)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, (
        event_id,
        visitor_id,
        ticket_type,
        purchase_date,
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


# === 16. Resale queue/ Seller/ Buyer ===
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
