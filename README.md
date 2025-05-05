# Festival Database Project - `db1`

For the purposes of international music festival *Pulse University* we developed a database called **`db1`**.

---

## STAGE 1

### 📄 STAGE 1 FILE DESCRIPTION

In this stage, our project consists of the following files:

1. **`festival_marina.sql`**  
   We began by developing our database. To create the DB, we used this SQL file.  
   It consists of the tables, constraints, and trigger functions.

2. **`data_creator2304.py`**  
   To populate it with dummy data, we incorporated the `faker` library in this Python script.

3. **`restart.sql`**  
   For our facilitation, we created a separate SQL file with the following lines, which clear the database and recreate it from `festival_marina.sql`:

   ```sql
   DROP DATABASE IF EXISTS db1;
   CREATE DATABASE db1;
   USE db1;
   SOURCE festival_marina.sql;
   ```

---

### 🧪 STAGE 1 TUTORIAL

From the project directory, we can create and populate the DB by following these steps:

```bash
a) cd "C:\Users\User\Documents\GitHub\Festival_Database"
b) mysql -u root -p db1 < restart.sql
c) python data_creator2304.py
```

---

## MOVING ON

After extensive tinkering, we reached a point where we were ready to begin writing queries.  
To work with a consistent database (since the Python script introduces randomness), we decided to create **backups** of specific DB states.  

This leads us to:

---

## STAGE 2

### 📄 STAGE 2 FILE DESCRIPTION

In this stage, we added the following **backup-related** files to our repository:

4. **`backup_db.sql`**  
   A full snapshot of the populated DB (tables, constraints, triggers, and data), created after running `festival_marina.sql` and then `data_creator2304.py`.

5. **`db1_inserts.sql`**  
   Contains **only the data** we chose to work with for query development. Created by running `data_creator2304.py` and dumping data-only.

6. **`read_backup.sql`**  
   For convenience, this SQL file resets and rebuilds the DB from the backup:

   ```sql
   DROP DATABASE IF EXISTS db1;
   CREATE DATABASE db1;
   USE db1;
   SOURCE backup_db.sql;
   ```

---

### 💾 STAGE 2 TUTORIAL

To **create a full backup** (`backup_db.sql`):

```bash
mysqldump -u root -p db1 > backup_db.sql
```

To **dump only the data** (`db1_inserts.sql`):

```bash
mysqldump -u root -p --no-create-info --skip-triggers db1 > db1_inserts.sql
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

## 📊 ΣΧΟΛΙΑ ΓΙΑ ΤΗΝ ΥΛΟΠΟΙΗΣΗ

Υλοποιήσαμε τους παρακάτω πίνακες (σε παρένθεση ο αριθμός των dummy δεδομένων που δημιουργήθηκαν από το `data_creator2304.py`):

**18 TABLES:**

- `artist` (50 tuples)  
- `building` (30 tuples)  
- `buyer` (10 tuples) <<<<<  
- `events` (161 tuples)  
- `festival` (10 tuples)  
- `festival_location` (10 tuples)  
- `group` (15 tuples) *(escaped because `group` is a reserved keyword)*  
- `group_members` (48 tuples)  
- `performances` (231 tuples)  
- `personel` (10 tuples)  
- `resale_queue` (8 tuples) <<<<<  
- `review` (171 tuples)  
- `role_of_personel_on_event` (470 tuples)  
- `seller` (10 tuples) <<<<<<<<<<  
- `temp_resale_matches` (2 tuples) <<<<<<<  
- `ticket` (220 tuples)  
- `visitor` (10 tuples)  
- `gerne` ( tuples) <<<<

---

## 📌 ΠΑΡΑΔΟΧΕΣ (Based on ER Diagram)

- Κάθε επισκέπτης μπορεί να αγοράσει **μόνο ένα εισιτήριο** για **μια συγκεκριμένη παράσταση και ημέρα**.
- Μπορεί όμως να αγοράσει **πολλά εισιτήρια συνολικά**, εφόσον κάθε ένα αντιστοιχεί σε **διαφορετική παράσταση ή/και ημέρα** του φεστιβάλ.
