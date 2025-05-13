# 🎶 Pulse University Festival – Database Project (`db1`)

For the purposes of the international music festival *Pulse University*, we developed a database called **`db1`**.

---

## 🧱 STAGE 1 – Initial Setup

### 📄 File Description

In this stage, our project consists of the following files:

1. **`sql\install.sql`**  
   We began by developing our database. To create the DB, we used this SQL file.  
   It consists of the tables, constraints, and trigger functions.

2. **`code\data_creator2304.py`**  
   To populate it with dummy data, we incorporated the `faker` library in this Python script.

3. **`sql\load.sql`**  
   To populate it with specific data that we created previously using the python script.

4. **`code\restart.sql`**  
   For our facilitation, we created a separate SQL file with the following lines, which clear the database and recreate it from `install.sql`:

   ```sql
   DROP DATABASE IF EXISTS db1;
   CREATE DATABASE db1;
   USE db1;
   SOURCE install.sql;
   ```
5. **`users`**
   Creating specific users with custom privilages.

   ```bash
   mysql -u manager -pmanager_pass -D db1
   mysql -u visitor_portal -pvisitor_pass -D db1
   mysql -u analytics -panalytics_pass -D db1
   ```


---

### 🧪 Tutorial

From the project directory, we can create and populate the DB by following these steps:

```bash
a) cd "C:\Users\User\Documents\GitHub\Festival_Database\sql"
b) mysql -u root -p db1 < install.sql
c) mysql -u root -p db1 < load.sql
```

---

## 💾 STAGE 2 – Backup & Restore

### 📄 File Description

In this stage, we added the following **backup-related** files to our repository:

5. **`code\backup_db.sql`**  
   A full snapshot of the populated DB (tables, constraints, triggers, and data), created after running `install.sql` and then `data_creator2304.py`.

6. **`code\read_backup.sql`**  
   For convenience, this SQL file resets and rebuilds the DB from the backup:

   ```sql
   DROP DATABASE IF EXISTS db1;
   CREATE DATABASE db1;
   USE db1;
   SOURCE backup_db.sql;
   ```

---

### 💡 Tutorial

To **create a full backup** (`backup_db.sql`):

```bash
mysqldump -u root -p db1 > backup_db.sql
```

To **load the backup**, we use:

```bash
d) mysql -u root -p db1 < read_backup.sql
```

Or manually:

```bash
di) mysql -u root -p db1
dii) source read_backup.sql
```

---

## 🧠 STAGE 3 – Query Development & Optimization

### 📄 File Description

After reading the official exercise description, we developed individual SQL files named **`Q01.sql`** through **`Q15.sql`**.  
Each file contains a query that answers the corresponding question in the assignment.

To support these queries efficiently, we updated **`install.sql`** by adding relevant **indexes** on key attributes, optimizing performance across join conditions and filtering clauses.

Besides the main SQL queries (`Q01–Q15`), we also included:

- **`Q04_2.sql`** and **`Q06_2.sql`**: Alternative implementations for questions 4 and 6, as requested in the assignment.

Using this enhanced data, we generated a **new backup** of the database.

## 🧱 STAGE 4 – Trigger Adjustments & Indexing

### 📄 File Description
Κατά την ανάπτυξη των queries στο Stage 3, υπήρξε σημαντικό back-and-forth, κυρίως λόγω της προσθήκης νέων **triggers** που επηρέαζαν την εκτέλεση των ερωτημάτων. Αφού καταλήξαμε σε ικανοποιητικές εκδοχές των queries, προχωρήσαμε στην **ανάπτυξη index** σε βασικά attributes, ώστε να βελτιώσουμε υπολογιστικά τις ενώσεις και τα φίλτρα των ερωτημάτων.

Δεν προστέθηκε κάποιο νέο αρχείο στο repository. Τα αρχεία που έχουν δημιουργηθεί μέχρι αυτό το στάδιο είναι:

- `Q01.sql` – `Q15.sql`
- `Q04_2.sql`, `Q06_2.sql`
- `festival_marina.sql`
- `data_creator.py`
- `restart.sql`
- `backup_db.sql`
- `db1_inserts.sql`
- `Read_backup.sql`

### 📘 Tutorial
Η βασική αλλαγή σε αυτό το στάδιο ήταν η προσθήκη των παρακάτω index στο αρχείο `festival_marina.sql`, στο section `-- === INDEXES === --`:

```sql
CREATE INDEX idx_perf_event_artist ON performances(event_ID, artist_ID);
CREATE INDEX idx_artist_name ON artist(artist_name);
CREATE INDEX idx_perf_artist_event ON performances(artist_ID, event_ID);
CREATE INDEX idx_perf_group_event ON performances(group_ID, event_ID);
CREATE INDEX idx_events_festival ON events(festival_ID);
CREATE INDEX idx_ticket_visitor_event ON ticket(visitor_ID, event_ID);
CREATE INDEX idx_ticket_event ON ticket(event_ID);
CREATE INDEX idx_review_ticket ON review(ticket_ID);
CREATE INDEX idx_genre_artist ON genre(artist_ID);
CREATE INDEX idx_genre_group ON genre(group_ID);
CREATE INDEX idx_role_event_role ON role_of_personel_on_event(event_ID, role);
CREATE INDEX idx_group_members_artist ON group_members(artist_ID);
CREATE INDEX idx_visitor_full_name ON visitor(last_name, first_name);
```

---

## 📤 STAGE 5 – Output Generation

Αφού ολοκληρώθηκε η βελτιστοποίηση των queries, προχωρήσαμε στη δημιουργία των ζητούμενων **αρχείων εξόδου** που περιέχουν τα αποτελέσματα εκτέλεσης κάθε ερωτήματος.

### 📄 File Description
Σε αυτό το στάδιο προστέθηκαν τα εξής αρχεία:

- `Q01_out.txt` – `Q15_out.txt`

### 📘 Tutorial
Για τη δημιουργία κάθε αρχείου εξόδου, χρησιμοποιήθηκε η παρακάτω εντολή από τερματικό (bash/cmd):

```bash
mysql -u root -p db1 < Q01.sql > Q01_out.txt
```



