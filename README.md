# 🎶 Pulse University Festival – Database Project (`db1`)

For the purposes of the international music festival *Pulse University*, we developed a database called **`db1`**.

---

## 🧱 STAGE 1 – Initial Setup

### 📄 File Description

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

### 🧪 Tutorial

From the project directory, we can create and populate the DB by following these steps:

```bash
a) cd "C:\Users\User\Documents\GitHub\Festival_Database"
b) mysql -u root -p db1 < restart.sql
c) python data_creator2304.py
```

---

## 💾 STAGE 2 – Backup & Restore

### 📄 File Description

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

### 💡 Tutorial

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

## 🧠 STAGE 3 – Query Development & Optimization

### 📄 File Description

After reading the official exercise description, we developed individual SQL files named **`Q01.sql`** through **`Q15.sql`**.  
Each file contains a query that answers the corresponding question in the assignment.

To support these queries efficiently, we updated **`festival_marina.sql`** by adding relevant **indexes** on key attributes, optimizing performance across join conditions and filtering clauses.

Besides the main SQL queries (`Q01–Q15`), we also included:

- **`Q04_2.sql`** and **`Q06_2.sql`**: Alternative implementations for questions 4 and 6, as requested in the assignment.
- **`new_data.py`**: A Python script that inserts additional tuples to ensure our queries do not return empty sets. This script creates enriched data cases for edge query testing.

Using this enhanced data, we generated a **new backup** of the database.

---

## 📊 Σχόλια για την Υλοποίηση

Υλοποιήσαμε τους παρακάτω πίνακες (σε παρένθεση ο αριθμός των dummy δεδομένων που δημιουργήθηκαν από το `data_creator2304.py`):

**18 TABLES:**

- `artist`  
- `building`  
- `buyer`   
- `events`  
- `festival`   
- `festival_location`   
- `group`  *(escaped because `group` is a reserved keyword)*  
- `group_members`  
- `performances`  
- `personel` 
- `resale_queue`   
- `review` 
- `role_of_personel_on_event`  
- `seller`  
- `temp_resale_matches`  
- `ticket`   
- `visitor`   
- `gerne` 

---

## 📌 Παραδοχές (Based on ER Diagram)

- Κάθε επισκέπτης μπορεί να αγοράσει **μόνο ένα εισιτήριο** για **μια συγκεκριμένη παράσταση και ημέρα**.
- Μπορεί όμως να αγοράσει **πολλά εισιτήρια συνολικά**, εφόσον κάθε ένα αντιστοιχεί σε **διαφορετική παράσταση ή/και ημέρα** του φεστιβάλ.