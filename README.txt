
We devaloped a database called db1.


STAGE 1:
STAGE 1 FILE DESCRIPTION:
In this stage our project consists of the following files:
    1) 'festival_marina.sql' 
        We began by developing our database. To create the DB we have the sql file 'festival_marina.sql'.
        This file consists of the tables, constrains and trigger functions.
    2) 'file data_creator2304.py'
        To populate it with dummy data using python we incorporated the faker library to create the python 'file data_creator2304.py'.
    3) 'restart.sql'
        For our facilitation we created a seperate sql file consisting of the following lines which clears the database and creates a new one from 'file festival_marina.sql'.
            DROP DATABASE IF EXISTS db1;
            CREATE DATABASE db1;
            use db1;
            source festival_marina.sql
STAGE 1 TUTORIAL:
Up to this point while on the project directory we can create a DB and populate it following the following steps:
    a) move to project directory ( eg cd "C:\Users\User\Documents\GitHub\Festival_Database")
    b) mysql -u root -p db1 < restart.sql
    c) python data_creator2304.py
MOVING ON:
After a lot of tingering, we reached a point where we were satisfied to begin the querries. At this point we wanted to work with a specific database.
To do so we decided to make backups of a specific DB (our python program has a random factor). With that we move to the next stage.

STAGE 2:
STAGE 2 FILE DESCRIPTION:
In this stage we proceed to add to the project repository the following files related to BACKUP CREATIONS:
    4) 'backup_db.sql'
        This file has the populated db (tables, constrains and trigger functions as well as the data)  with which we are going to work with for developing our queries. It was created by running 'festival_marina.sql' and then file 'data_creator2304.py'.
    5) 'db1_inserts'
        This file has only the data we chose to work with while developing our querries. It was created by running 'file data_creator2304.py'.
    6) 'read_backup'
        For our facilitation we created a seperate sql file consisting of the following lines which clears the database and creates a new one from 'backup_db.sql'.
            DROP DATABASE IF EXISTS db1;
            CREATE DATABASE db1;
            use db1;
            source backup_db.sql

STAGE 2 TUTORIAL:
to make a backup (όπως το αρχείο backup_db.sql):
    mysqldump -u root -p db1 > backup_file.sql


to make the inserts (db1_insert.sql):
    mysqldump -u root -p --no-create-info --skip-triggers db1 > db1_inserts.sql

The above describe the creation of the backup files we are gonna be using. 
The actual command we are gonna be running is the following:
    d) mysql -u root -p db1 < read_backup.sql
    the fisrt time or while in our database source read_backup.sql:
    di) mysql -u root -p db1
    dii) source read_backup.sql


 
ΣΧΟΛΙΑ ΓΙΑ ΤΗΝ ΥΛΟΠΟΙΗΣΗ
Υλοποιήσαμε τα παρακάτω tables. Σε παρένθεση φαίνεται πόσα dummy δεδομένα έφτιαξε για τον κάθε πίνακα το πρόγραμμα "data_creator2304.py".
artist (50 tuples)
building (30 tuples)
buyer (10 tuples) <<<<<
events (161 tuples)
festival (10 tuples)
festival_location (10 tuples)
group which is actually `group` (15 tuples)
group_members (48 tuples)
performances (231 tuples)
personel (10 tuples)
resale_queue (8 tuples) <<<<<
review (171 tuples)
role_of_personel_on_event (470 tuples)
seller (10 tuples) <<<<<<<<<<
temp_resale_matches (2 tuples) <<<<<<<
ticket (220 tuples)
visitor (10 tuples)

ΠΑΡΑΔΟΧΕΣ
με βάση το ER DIAGRAM<<<<<<
Ο κάθε επισκέπτης μπορεί να αγοράσει μόνο ένα εισιτήριο για μια συγκεκριμένη παράσταση και ημέρα.
Όμως μπορεί να αγοράσει πολλά εισιτήρια συνολικά, αρκεί το κάθε ένα να αντιστοιχεί σε διαφορετική παράσταση ή/και διαφορετική ημέρα.