-- == TABLES CREATION == --

-- Festival
-- Stores basic information about each festival
CREATE TABLE festival (
    festival_ID INT PRIMARY KEY AUTO_INCREMENT,
    starting_date DATE NOT NULL,
    duration INT NOT NULL -- in days
);

-- Festival Location
-- Each festival can have one or more associated locations
CREATE TABLE festival_location (
    festival_ID INT,
    festival_location_ID INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255) NOT NULL,
    town VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    continent VARCHAR(100) NOT NULL,
    geo_coordinates VARCHAR(100) NOT NULL,
    FOREIGN KEY (festival_ID) REFERENCES festival(festival_ID)
);

-- Personel
-- Stores personal and professional information about event staff
CREATE TABLE personel (
    personel_ID INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    expertise_status ENUM('intern', 'beginer', 'intermidiate', 'experienced', 'very_experienced')
);

-- Building
-- Details about buildings where events may take place
CREATE TABLE building (
    building_ID INT PRIMARY KEY AUTO_INCREMENT,
    building_name VARCHAR(255) NOT NULL,
    building_description TEXT NOT NULL,
    max_capacity INT NOT NULL
);

-- Technical Equipment
-- Stores information about technical equipment wanted from buildings
CREATE TABLE technical_equipment (
    technical_equipment_ID INT PRIMARY KEY AUTO_INCREMENT,
    building_ID INT,
    equipment_name VARCHAR(255) NOT NULL,
    equipment_description TEXT NOT NULL,
    FOREIGN KEY (building_ID) REFERENCES building(building_ID)
);
-- Artist
-- Stores artist profiles and metadata
CREATE TABLE artist (
    artist_ID INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(255) NOT NULL,
    stage_name VARCHAR(255),  -- can be NULL
    artist_date_of_birth DATE NOT NULL,
    artist_debute DATE NOT NULL,
    artist_website VARCHAR(255),     -- can be NULL
    artist_instagram VARCHAR(255),   -- can be NULL
    num_of_consecutive_years_participating INT DEFAULT 0,
    CHECK (0 <= num_of_consecutive_years_participating AND num_of_consecutive_years_participating <= 3) -- number of years the artist has participated in the festival
);

-- Group 
-- Stores information about groups, including their members
CREATE TABLE `group` ( -- renamed from group to avoid SQL keyword conflict
    group_ID INT PRIMARY KEY AUTO_INCREMENT,
    group_name VARCHAR(255) NOT NULL,
    group_date_of_birth DATE NOT NULL,
    group_debute DATE NOT NULL,
    group_website VARCHAR(255),     -- can be NULL
    group_instagram VARCHAR(255),   -- can be NULL
    member_names TEXT DEFAULT '',
    num_of_consecutive_years_participating INT DEFAULT 0,
    CHECK (0 <= num_of_consecutive_years_participating AND num_of_consecutive_years_participating <= 3) -- number of years the artist has participated in the festival

    );    

-- Genre
-- Represents the genre of an artist or group
CREATE TABLE genre (
    genre_ID INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100) NOT NULL,
    subgenre_name VARCHAR(100),
    artist_ID INT,
    group_ID INT,
    FOREIGN KEY (artist_ID) REFERENCES artist(artist_ID),
    FOREIGN KEY (group_ID) REFERENCES `group`(group_ID)
);


-- Group Members
-- Stores the relationship between groups and their members
CREATE TABLE group_members (
    group_ID INT,
    artist_ID INT,
    PRIMARY KEY (group_ID, artist_ID),
    FOREIGN KEY (group_ID) REFERENCES `group`(group_ID),
    FOREIGN KEY (artist_ID) REFERENCES artist(artist_ID)
); 

-- Events
-- Represents a specific event held as part of a festival
CREATE TABLE events (
    event_ID INT PRIMARY KEY AUTO_INCREMENT,
    festival_ID INT,
    event_name VARCHAR(255) NOT NULL,
    festival_day INT NOT NULL,
    event_start_time DATETIME NOT NULL,
    event_end_time DATETIME NOT NULL,
    building_ID INT,
    event_duration INT GENERATED ALWAYS AS (
        CASE
            WHEN event_end_time >= event_start_time THEN TIMESTAMPDIFF(MINUTE, event_start_time, event_end_time)
            ELSE TIMESTAMPDIFF(MINUTE, event_start_time, event_end_time) + 1440
        END     
    ) STORED,
    FOREIGN KEY (building_ID) REFERENCES building(building_ID),
    FOREIGN KEY (festival_ID) REFERENCES festival(festival_ID), -- ,
    VIP_total INT, 
    backstage_total INT,
    general_total INT
    );

-- Performances
-- Each performance belongs to an event and has a type and duration
CREATE TABLE performances (
    performance_ID INT PRIMARY KEY AUTO_INCREMENT,
    event_ID INT,
    performance_type ENUM('warm up', 'headline', 'special_guest', 'finale') NOT NULL,
    performance_start_time DATETIME NOT NULL,
    performance_end_time DATETIME NOT NULL, -- Time plain didnt work because an event can begin at 11:00 and end at next day 01:00
    performance_duration INT GENERATED ALWAYS AS (
        CASE
            WHEN performance_end_time >= performance_start_time THEN TIMESTAMPDIFF(MINUTE, performance_start_time, performance_end_time)
            ELSE TIMESTAMPDIFF(MINUTE, performance_start_time, performance_end_time) + 1440
        END     
    ) STORED,    
    building_ID INT NOT NULL,
    building_name VARCHAR(255) NOT NULL,
    artist_ID INT DEFAULT NULL,
    group_ID INT DEFAULT NULL,
    FOREIGN KEY (event_ID) REFERENCES events(event_ID),
    FOREIGN KEY (building_ID) REFERENCES building(building_ID),
    FOREIGN KEY (artist_ID) REFERENCES artist(artist_ID),
    FOREIGN KEY (group_ID) REFERENCES `group`(group_ID),
    CHECK (performance_start_time < performance_end_time),
    CHECK (performance_duration <= 180) -- max duration of a performance is 3 hours
);

-- Personel-Event Relationship (many-to-many)
-- This table defines the role of each personel in each event
CREATE TABLE role_of_personel_on_event (
    personel_ID INT,
    event_ID INT,
    role ENUM('technical','security','support') NOT NULL,
    PRIMARY KEY (personel_ID, event_ID),
    FOREIGN KEY (personel_ID) REFERENCES personel(personel_ID),
    FOREIGN KEY (event_ID) REFERENCES events(event_ID)
);

-- Visitor
-- Stores personal data for individuals attending events
CREATE TABLE visitor (
    visitor_ID INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    telephone VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT NOT NULL
);

-- Ticket (one-to-many with visitor & event)
-- A ticket belongs to one visitor and one event
CREATE TABLE ticket (
    ticket_ID INT AUTO_INCREMENT PRIMARY KEY,
    event_ID INT,
    visitor_ID INT NOT NULL,
    barcode CHAR(13),
    FOREIGN KEY (visitor_ID) REFERENCES visitor(visitor_ID),
    FOREIGN KEY (event_ID) REFERENCES events(event_ID),

    ticket_type ENUM('general_admission', 'VIP', 'backstage') NOT NULL,
    purchase_date DATE,
    purchase_price DECIMAL(10, 2),
    payment_method ENUM('debit_card', 'credit_card', 'I-BAN'),
    activated_status BOOLEAN DEFAULT FALSE,
    visitor_name VARCHAR(100),
    visitor_last_name VARCHAR(100),
    visitor_email VARCHAR(100),
    visitor_telephone VARCHAR(20),
    visitor_age INT
);


-- Buyer
-- Represents users interested in buying tickets
CREATE TABLE buyer (
    buyer_ID INT PRIMARY KEY,
    FOREIGN KEY (buyer_ID) REFERENCES visitor(visitor_ID)
);


-- Seller
-- Represents users who are selling or listing tickets for resale
CREATE TABLE seller (
    seller_ID INT PRIMARY KEY ,
    FOREIGN KEY (seller_ID) REFERENCES visitor(visitor_ID)
);

-- Resale Queue (FIFO)
-- A queue for tickets listed for resale, based on timestamp
CREATE TABLE resale_queue (
    resale_ID INT AUTO_INCREMENT PRIMARY KEY,
    buyer_ID INT,
    seller_ID INT,
    event_name VARCHAR(255) NULL,
    ticket_type ENUM('general_admission', 'VIP', 'backstage') NULL,
    ticket_ID INT NULL,
    listed_at TIMESTAMP ,
    FOREIGN KEY (buyer_ID) REFERENCES visitor(visitor_ID),
    FOREIGN KEY (seller_ID) REFERENCES visitor(visitor_ID),
    FOREIGN KEY (ticket_ID) REFERENCES ticket(ticket_ID)
);


-- Review
-- Feedback for events by visitors who have activated tickets
-- (Use a trigger to ensure review is only allowed if ticket is activated)
CREATE TABLE review (
   ticket_ID INT NOT NULL,
   performance_ID INT NOT NULL,

   artist_performance ENUM('1', '2', '3', '4', '5'),
   sound_and_lighting ENUM('1', '2', '3', '4', '5'),
   stage_presence ENUM('1', '2', '3', '4', '5'),
   event_organization ENUM('1', '2', '3', '4', '5'),
   overall_impression ENUM('1', '2', '3', '4', '5'),
   PRIMARY KEY (ticket_ID, performance_ID),
   FOREIGN KEY (ticket_ID) REFERENCES ticket(ticket_ID),
   FOREIGN KEY (performance_ID) REFERENCES performances(performance_ID)
);



-- Temporary Table for Resale Matches
CREATE TABLE temp_resale_matches (
    match_ID INT AUTO_INCREMENT PRIMARY KEY,
    buyer_ID INT,
    seller_ID INT,
    ticket_ID INT,
    FOREIGN KEY (buyer_ID) REFERENCES buyer(buyer_ID),
    FOREIGN KEY (seller_ID) REFERENCES seller(seller_ID),
    FOREIGN KEY (ticket_ID) REFERENCES ticket(ticket_ID)
);

CREATE TABLE photo(
    photo_ID INT AUTO_INCREMENT PRIMARY KEY,
    photo_name VARCHAR(255) NOT NULL,
    photo_description TEXT NOT NULL,
    artist_ID INT,
    group_ID INT,
    performance_ID INT,
    event_ID INT,
    festival_ID INT,
    technical_equipment_ID INT,
    FOREIGN KEY (artist_ID) REFERENCES artist(artist_ID),
    FOREIGN KEY (group_ID) REFERENCES `group`(group_ID),
    FOREIGN KEY (performance_ID) REFERENCES performances(performance_ID),
    FOREIGN KEY (event_ID) REFERENCES events(event_ID),
    FOREIGN KEY (festival_ID) REFERENCES festival(festival_ID),
    FOREIGN KEY (technical_equipment_ID) REFERENCES technical_equipment(technical_equipment_ID)
);

-- == VIEW == --
CREATE VIEW artist_participations AS
SELECT
    a.artist_ID,
    a.artist_date_of_birth,
    a.artist_name,
    f.festival_ID,
    e.event_ID,
    p.performance_ID,
    p.performance_type,
    p.performance_start_time,
    p.performance_end_time,
    p.performance_duration,
    'solo' AS participation_type
FROM
    artist a
    JOIN performances p ON a.artist_ID = p.artist_ID
    JOIN events e ON p.event_ID = e.event_ID
    JOIN festival f ON e.festival_ID = f.festival_ID

UNION ALL

SELECT
    gm.artist_ID,
    a.artist_date_of_birth,
    a.artist_name,
    f.festival_ID,
    e.event_ID,
    p.performance_ID,
    p.performance_type,
    p.performance_start_time,
    p.performance_end_time,
    p.performance_duration,
    'group' AS participation_type
FROM
    group_members gm
    JOIN `group` g ON gm.group_ID = g.group_ID
    JOIN performances p ON g.group_ID = p.group_ID
    JOIN events e ON p.event_ID = e.event_ID
    JOIN festival f ON e.festival_ID = f.festival_ID
    JOIN artist a ON gm.artist_ID = a.artist_ID;
-- == INDEXES == --

CREATE INDEX idx_perf_event_artist ON performances(event_ID, artist_ID); -- Q04, Q05, Q09, Q10, Q11, Q13, Q14, Q15 
CREATE INDEX idx_artist_name ON artist(artist_name); -- Q04 
CREATE INDEX idx_perf_artist_event ON performances(artist_ID, event_ID); -- Q02, Q04, Q05, Q10,Q11, Q13, Q15 
CREATE INDEX idx_perf_group_event ON performances(group_ID, event_ID); -- Q02, Q04, Q05, Q10,Q11, Q13, Q15 
CREATE INDEX idx_ticket_visitor_event ON ticket(visitor_ID, event_ID); -- Q06, Q09, Q15 
CREATE INDEX idx_role_event_role ON role_of_personel_on_event(event_ID, role); -- Q12 
CREATE INDEX idx_visitor_full_name ON visitor(last_name, first_name); -- Q06 
-- CREATE INDEX idx_ticket_purchase_year_price ON ticket(purchase_date, purchase_price); --Q01 
CREATE INDEX idx_perf_type_artist_event ON performances(performance_type, artist_ID, event_ID); -- Q03 
-- CREATE INDEX idx_role_event_role_personel ON role_of_personel_on_event(role, personel_ID, event_ID); -- Q07, Q08 
-- CREATE INDEX idx_personel_expertise ON personel(expertise_status); -- Q08 
CREATE INDEX idx_festival_location_continent ON festival_location(festival_ID, continent); --Q13 

-- == TRIGGERS == --


-- Deletion Triggers
-- Deletion Trigger 1
-- Prevent Festival Deletion Trigger
DELIMITER $$

CREATE TRIGGER prevent_festival_deletion
BEFORE DELETE ON festival
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Festival cannot be deleted.';
END$$

DELIMITER ;

--Deletion Trigger 2
-- Prevent Performance Deletion Trigger
DELIMITER $$

CREATE TRIGGER prevent_performance_deletion
BEFORE DELETE ON performances
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Performance cannot be deleted.';
END$$

DELIMITER ;

-- Ticket Triggers --
-- Ticket Trigger 1 --
-- Check if the ticket can be sold based on the event's capacity and ticket type limits

DELIMITER $$

CREATE TRIGGER check_ticket_availability
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE sold_total INT DEFAULT 0;
    DECLARE sold_vip INT DEFAULT 0;
    DECLARE sold_backstage INT DEFAULT 0;
    DECLARE sold_general INT DEFAULT 0;
    DECLARE vip_limit INT DEFAULT 0;
    DECLARE backstage_limit INT DEFAULT 0;
    DECLARE general_limit INT DEFAULT 0;
    DECLARE max_capacity INT DEFAULT 0;

    -- Συνολικά εισιτήρια για το event
    SELECT COUNT(*) INTO sold_total
    FROM ticket
    WHERE event_ID = NEW.event_ID;

    -- Πωλημένα ανά τύπο
    SELECT 
        SUM(ticket_type = 'VIP'),
        SUM(ticket_type = 'backstage'),
        SUM(ticket_type = 'general_admission')
    INTO sold_vip, sold_backstage, sold_general
    FROM ticket
    WHERE event_ID = NEW.event_ID;

    -- Όρια εισιτηρίων για το event
    SELECT VIP_total, backstage_total, general_total
    INTO vip_limit, backstage_limit, general_limit
    FROM events
    WHERE event_ID = NEW.event_ID;

    -- Χωρητικότητα του κτιρίου για το event
    SELECT b.max_capacity
    INTO max_capacity
    FROM events e
    JOIN building b ON e.building_ID = b.building_ID
    WHERE e.event_ID = NEW.event_ID;

    -- Έλεγχος χωρητικότητας
    IF sold_total >= max_capacity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell ticket: event has reached maximum building capacity.';
    END IF;

    -- Έλεγχος διαθεσιμότητας ανά τύπο
    IF NEW.ticket_type = 'VIP' AND sold_vip >= vip_limit THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell VIP ticket: limit reached.';
    ELSEIF NEW.ticket_type = 'backstage' AND sold_backstage >= backstage_limit THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell Backstage ticket: limit reached.';
    ELSEIF NEW.ticket_type = 'general_admission' AND sold_general >= general_limit THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot sell General Admission ticket: limit reached.';
    END IF;
END $$

DELIMITER ;

-- Ticket Trigger 2 --
-- When a new ticket is created, fill in visitor data from the visitor table
DELIMITER $$

CREATE TRIGGER fill_ticket_visitor_data
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE v_name VARCHAR(100);
    DECLARE v_last_name VARCHAR(100);
    DECLARE v_email VARCHAR(100);
    DECLARE v_phone VARCHAR(20);
    DECLARE v_age INT;

    -- Παίρνουμε τα στοιχεία του επισκέπτη από τον πίνακα visitor
    SELECT first_name, last_name, email, telephone, age
    INTO v_name, v_last_name, v_email, v_phone, v_age
    FROM visitor
    WHERE visitor_ID = NEW.visitor_ID;

    -- Αναθέτουμε τις τιμές στα αντίστοιχα πεδία του εισιτηρίου
    SET NEW.visitor_name = v_name;
    SET NEW.visitor_last_name = v_last_name;
    SET NEW.visitor_email = v_email;
    SET NEW.visitor_telephone = v_phone;
    SET NEW.visitor_age = v_age;
END$$

DELIMITER ;


-- Visitor Triggers --
-- Visitor Trigger 1 --
-- Ensure visitor's info is updated in the ticket table when visitor info is updated
DELIMITER $$
CREATE TRIGGER trg_ticket_update_visitor
AFTER UPDATE ON visitor
FOR EACH ROW
BEGIN
  UPDATE ticket
    SET visitor_name       = NEW.first_name,
        visitor_last_name  = NEW.last_name,
        visitor_email      = NEW.email,
        visitor_telephone  = NEW.telephone,
        visitor_age        = NEW.age
  WHERE visitor_ID = NEW.visitor_ID;
END$$

DELIMITER ;



-- Resale Triggers --
-- Resale Trigger 1 --
-- Trigger to check that the ticket is not activated before resale
DELIMITER $$

-- Trigger to check that the ticket is not activated before resale
CREATE TRIGGER check_ticket_activation_before_resale
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    -- Δηλώνουμε τη μεταβλητή ticket_activated στο αρχή του trigger
    DECLARE ticket_activated BOOLEAN;

    -- Ελέγχουμε αν ο πωλητής είναι ορισμένος και αν το ticket_ID δεν είναι NULL
    IF NEW.seller_ID IS NOT NULL AND NEW.ticket_ID IS NOT NULL THEN
        -- Ελέγχουμε την κατάσταση του εισιτηρίου στον πίνακα ticket
        SELECT activated_status INTO ticket_activated
        FROM ticket
        WHERE ticket_ID = NEW.ticket_ID;

        -- Αν το εισιτήριο είναι ενεργοποιημένο (activated_status = TRUE), επιστρέφουμε σφάλμα
        IF ticket_activated = TRUE THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot resell an activated ticket.';
        END IF;
    END IF;
END$$

DELIMITER ;


-- Resale Trigger 2 --
-- Check if the ticket is sold out before allowing resale
DELIMITER $$

CREATE TRIGGER trg_check_soldout_before_resale
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    DECLARE event_id_val INT;
    DECLARE ticket_type_val ENUM('general_admission', 'VIP', 'backstage');
    DECLARE total_available INT;
    DECLARE sold_count INT;
    DECLARE msg_text VARCHAR(255);

    -- Περίπτωση 1: υπάρχει ticket_ID → πάρε event_ID και ticket_type από τον πίνακα ticket
    IF NEW.ticket_ID IS NOT NULL THEN
        SELECT event_ID, ticket_type
        INTO event_id_val, ticket_type_val
        FROM ticket
        WHERE ticket_ID = NEW.ticket_ID;

    -- Περίπτωση 2: δεν υπάρχει ticket_ID αλλά υπάρχει event_name και ticket_type
    ELSEIF NEW.event_name IS NOT NULL AND NEW.ticket_type IS NOT NULL THEN
        SELECT event_ID
        INTO event_id_val
        FROM events
        WHERE event_name = NEW.event_name
        LIMIT 1;  -- για ασφάλεια σε διπλότυπα ονόματα

        SET ticket_type_val = NEW.ticket_type;

    -- Περίπτωση 3: δεν υπάρχουν αρκετά στοιχεία για έλεγχο
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not enough information to check resale availability.';
    END IF;

    -- Ανάλογα με τον τύπο εισιτηρίου, βρες το σύνολο διαθέσιμων
    IF ticket_type_val = 'VIP' THEN
        SELECT VIP_total INTO total_available FROM events WHERE event_ID = event_id_val;
    ELSEIF ticket_type_val = 'backstage' THEN
        SELECT backstage_total INTO total_available FROM events WHERE event_ID = event_id_val;
    ELSE
        SELECT general_total INTO total_available FROM events WHERE event_ID = event_id_val;
    END IF;

    -- Πόσα έχουν πουληθεί για το event και τον τύπο
    SELECT COUNT(*) INTO sold_count
    FROM ticket
    WHERE event_ID = event_id_val AND ticket_type = ticket_type_val;

    -- Έλεγχος αν επιτρέπεται το resale
    IF sold_count < total_available THEN
        SET msg_text = CONCAT('Resale not allowed: ', ticket_type_val, ' tickets are not sold out yet.');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = msg_text;
    END IF;

END$$

DELIMITER ;


-- Resale Trigger 3 -- 
-- When a new resale entry of a buyer is created, add the buyer to the buyer table 
-- When a new resale entry of a seller is created, add the seller to the seller table
DELIMITER $$

CREATE TRIGGER create_buyer_or_seller_after_visitor
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    -- Declare variables to check if the buyer or seller already exists
    DECLARE existing_buyer INT;
    DECLARE existing_seller INT;

    -- If buyer_ID is not NULL and it does not exist in the buyer table, insert it into the buyer table
    IF NEW.buyer_ID IS NOT NULL THEN
        -- Check if the buyer_ID already exists in the buyer table
        SELECT COUNT(*)
        INTO existing_buyer
        FROM buyer
        WHERE buyer_ID = NEW.buyer_ID;

        -- If the buyer doesn't exist, insert it into the buyer table
        IF existing_buyer = 0 THEN
            INSERT INTO buyer (buyer_ID)
            VALUES (NEW.buyer_ID);  -- Use NEW.buyer_ID as buyer_ID
        END IF;
    END IF;

    -- If seller_ID is not NULL and it does not exist in the seller table, insert it into the seller table
    IF NEW.seller_ID IS NOT NULL THEN
        -- Check if the seller_ID already exists in the seller table
        SELECT COUNT(*)
        INTO existing_seller
        FROM seller
        WHERE seller_ID = NEW.seller_ID;

        -- If the seller doesn't exist, insert it into the seller table
        IF existing_seller = 0 THEN
            INSERT INTO seller (seller_ID)
            VALUES (NEW.seller_ID);  -- Use NEW.seller_ID as seller_ID
        END IF;
    END IF;
END$$

DELIMITER ;

-- Resale Trigger 4 --
--  Matching Seller and Buyer and Updating Ticket

DELIMITER $$

CREATE TRIGGER match_resale_after_insert
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    DECLARE matched_seller INT;
    DECLARE matched_buyer INT;

    -- Εάν ο αγοραστής (buyer) είναι ορισμένος, κάνε την αντιστοίχιση με τον πωλητή
    IF NEW.buyer_ID IS NOT NULL THEN
        -- Βρες διαθέσιμο seller που δεν έχει ήδη γίνει match
        SELECT seller_ID INTO matched_seller
        FROM resale_queue
        WHERE ticket_ID = NEW.ticket_ID
          AND seller_ID IS NOT NULL
          AND buyer_ID IS NULL
          AND seller_ID NOT IN (
              SELECT seller_ID FROM temp_resale_matches WHERE ticket_ID = NEW.ticket_ID
          )
        ORDER BY listed_at ASC
        LIMIT 1;

        IF matched_seller IS NOT NULL THEN
            -- Εισαγωγή στο temp_resale_matches
            UPDATE ticket
            SET visitor_ID = NEW.buyer_ID
            WHERE ticket_ID = NEW.ticket_ID;

            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (NEW.buyer_ID, matched_seller, NEW.ticket_ID);
        END IF;
    END IF;

    -- Εάν ο πωλητής (seller) είναι ορισμένος, κάνε την αντιστοίχιση με τον αγοραστή
    IF NEW.seller_ID IS NOT NULL THEN
        -- Βρες διαθέσιμο buyer που δεν έχει ήδη γίνει match
        SELECT buyer_ID INTO matched_buyer
        FROM resale_queue
        WHERE ticket_ID = NEW.ticket_ID
          AND buyer_ID IS NOT NULL
          AND seller_ID IS NULL
          AND buyer_ID NOT IN (
              SELECT buyer_ID FROM temp_resale_matches WHERE ticket_ID = NEW.ticket_ID
          )
        ORDER BY listed_at ASC
        LIMIT 1;

        IF matched_buyer IS NOT NULL THEN
            -- Εισαγωγή στο temp_resale_matches
            UPDATE ticket
            SET visitor_ID = matched_buyer
            WHERE ticket_ID = NEW.ticket_ID;

            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (matched_buyer, NEW.seller_ID, NEW.ticket_ID);
        END IF;
    END IF;

END$$

DELIMITER ;





-- Event Triggers --
-- Event Trigger 1 --
-- Ensure that the festival_day is within the festival duration
DELIMITER $$

CREATE TRIGGER check_festival_day
BEFORE INSERT ON events
FOR EACH ROW
BEGIN
    DECLARE fest_duration INT;

    SELECT duration INTO fest_duration
    FROM festival
    WHERE festival_ID = NEW.festival_ID;

    IF NEW.festival_day > fest_duration THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'festival_day cannot be greater than festival duration.';
    END IF;
END$$

DELIMITER ;





-- Gerne Triggers --
-- Genre Trigger 1 --
-- Ensure that each genre is linked to either one artist or one group, but not both or neither
DELIMITER $$

CREATE TRIGGER check_genre_entity_exclusivity
BEFORE INSERT ON genre
FOR EACH ROW
BEGIN
    IF (NEW.artist_ID IS NOT NULL AND NEW.group_ID IS NOT NULL) OR
       (NEW.artist_ID IS NULL AND NEW.group_ID IS NULL) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Each genre must be linked to either one artist OR one group (not both or neither).';
    END IF;
END $$

DELIMITER ;



--Performance Triggers--
-- Performance Trigger 1 --
-- Ensure a minimum 5-minute break between performances of the same event in the same building

DELIMITER $$

DELIMITER $$
CREATE TRIGGER check_performance_overlap
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE conflict_count INT;

    SELECT COUNT(*)
    INTO conflict_count
    FROM performances
    WHERE
        building_ID = NEW.building_ID

        AND (
            (NEW.performance_start_time BETWEEN performance_start_time - INTERVAL 301 SECOND AND performance_end_time + INTERVAL 299 SECOND  )
            OR
            (NEW.performance_end_time BETWEEN performance_start_time -  INTERVAL 301 SECOND AND performance_end_time + INTERVAL 299 SECOND )
        );

    IF conflict_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Conflict with another performance in the same building, same day, time range +/-5 minutes';
    END IF;
END$$

DELIMITER ;



-- Performance Trigger 2 --
-- Check for consecutive years of participation for artists
DELIMITER $$

CREATE TRIGGER trg_check_consecutive_years_artists
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE fest_year INT;
    DECLARE found_current_festival INT DEFAULT 0;
    DECLARE prev_year_exists INT DEFAULT 0;
    DECLARE curr_num INT DEFAULT 0;

    IF NEW.artist_ID IS NOT NULL THEN

        -- Πάρε τη χρονιά του φεστιβάλ μέσω του event_ID -> festival_ID
        SELECT YEAR(f.starting_date) INTO fest_year
        FROM events e
        JOIN festival f ON e.festival_ID = f.festival_ID
        WHERE e.event_ID = NEW.event_ID;

        -- Ελέγχει αν συμμετέχει ήδη φέτος
        SELECT COUNT(*) INTO found_current_festival
        FROM performances p
        JOIN events e ON p.event_ID = e.event_ID
        WHERE p.artist_ID = NEW.artist_ID
          AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year;

        IF found_current_festival = 0 THEN

            -- Έλεγξε συμμετοχή το προηγούμενο έτος
            SELECT COUNT(*) INTO prev_year_exists
            FROM performances p
            JOIN events e ON p.event_ID = e.event_ID
            WHERE p.artist_ID = NEW.artist_ID
              AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year - 1;

            IF prev_year_exists > 0 THEN
                SELECT num_of_consecutive_years_participating INTO curr_num
                FROM artist
                WHERE artist_ID = NEW.artist_ID;

                IF curr_num >= 3 THEN
                    SIGNAL SQLSTATE '45001'
                    SET MESSAGE_TEXT = 'The artist cannot participate in more than 3 consecutive years.';
                ELSE
                    UPDATE artist
                    SET num_of_consecutive_years_participating = curr_num + 1
                    WHERE artist_ID = NEW.artist_ID;
                END IF;
            ELSE
                -- Reset if skipped a year
                UPDATE artist
                SET num_of_consecutive_years_participating = 1
                WHERE artist_ID = NEW.artist_ID;
            END IF;

        END IF;
    END IF;
END$$

DELIMITER ;




-- Performance Trigger 3 --
-- Check for consecutive years of participation for groups
DELIMITER $$

CREATE TRIGGER trg_check_consecutive_years_groups

BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE fest_year INT;
    DECLARE found_current_festival INT DEFAULT 0;
    DECLARE prev_year_exists INT DEFAULT 0;
    DECLARE curr_num INT DEFAULT 0;

    IF NEW.group_ID IS NOT NULL THEN

        -- Πάρε τη χρονιά του φεστιβάλ μέσω του event_ID -> festival_ID
        SELECT YEAR(f.starting_date) INTO fest_year
        FROM events e
        JOIN festival f ON e.festival_ID = f.festival_ID
        WHERE e.event_ID = NEW.event_ID;

        -- Ελέγχει αν συμμετέχει ήδη φέτος
        SELECT COUNT(*) INTO found_current_festival
        FROM performances p
        JOIN events e ON p.event_ID = e.event_ID
        WHERE p.group_ID = NEW.group_ID
          AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year;

        IF found_current_festival = 0 THEN

            -- Έλεγξε συμμετοχή το προηγούμενο έτος
            SELECT COUNT(*) INTO prev_year_exists
            FROM performances p
            JOIN events e ON p.event_ID = e.event_ID
            WHERE p.group_ID = NEW.group_ID
              AND YEAR((SELECT starting_date FROM festival WHERE festival_ID = e.festival_ID)) = fest_year - 1;

            IF prev_year_exists > 0 THEN
                SELECT num_of_consecutive_years_participating INTO curr_num
                FROM `group`
                WHERE group_ID = NEW.group_ID;

                IF curr_num >= 3 THEN
                    SIGNAL SQLSTATE '45001'
                    SET MESSAGE_TEXT = 'The group cannot participate in more than 3 consecutive years.';
                ELSE
                    UPDATE `group`
                    SET num_of_consecutive_years_participating = curr_num + 1
                    WHERE group_ID = NEW.group_ID;
                END IF;
            ELSE
                -- Reset if skipped a year
                UPDATE `group`
                SET num_of_consecutive_years_participating = 1
                WHERE group_ID = NEW.group_ID;
            END IF;

        END IF;
    END IF;
END$$

DELIMITER ;



-- Performance Trigger 5 --
-- Check for overlapping performances for the same artist or group
DELIMITER $$

CREATE TRIGGER prevent_artist_group_overlap
BEFORE INSERT ON performances
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM performances p
    WHERE (
              (NEW.artist_ID IS NOT NULL AND p.artist_ID = NEW.artist_ID)
           OR (NEW.group_ID IS NOT NULL AND p.group_ID = NEW.group_ID)
          )
      AND (
           p.performance_start_time < NEW.performance_end_time AND
           p.performance_end_time > NEW.performance_start_time
      );

    IF overlap_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Artist or group has an overlapping performance.';
    END IF;
END$$

DELIMITER ;

-- Performance Trigger 6 --
-- Check for overlapping performances for the same artist or group on update
DELIMITER $$

CREATE TRIGGER prevent_artist_group_overlap_update
BEFORE UPDATE ON performances
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM performances p
    WHERE p.performance_ID != NEW.performance_ID
      AND (
              (NEW.artist_ID IS NOT NULL AND p.artist_ID = NEW.artist_ID)
           OR (NEW.group_ID IS NOT NULL AND p.group_ID = NEW.group_ID)
          )
      AND (
           p.performance_start_time < NEW.performance_end_time AND
           p.performance_end_time > NEW.performance_start_time
      );

    IF overlap_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Artist or group has an overlapping performance (on update).';
    END IF;
END$$

DELIMITER ;


-- Ticket Triggers --
-- Ticket Trigger 1 --
-- VIP ticket limit check
-- Ensure that the number of VIP tickets does not exceed 10% of total tickets for the event
-- This is done using a trigger before inserting a new ticket

DELIMITER $$

CREATE TRIGGER check_vip_limit
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE vip_count INT;
    DECLARE total_count INT;

    IF NEW.ticket_type = 'VIP' THEN
        SELECT COUNT(*) INTO vip_count
        FROM ticket
        WHERE event_ID = NEW.event_ID AND ticket_type = 'VIP';

        SELECT COUNT(*) INTO total_count
        FROM ticket
        WHERE event_ID = NEW.event_ID;

        IF (vip_count + 1) > (0.1 * (total_count + 1)) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'VIP ticket limit exceeded for this event.';
        END IF;
    END IF;
END$$

DELIMITER ;

-- Ticket Trigger 2 --
-- Prevent duplicate tickets for the same visitor and event
DELIMITER $$

CREATE TRIGGER prevent_duplicate_ticket
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    DECLARE duplicate_count INT;

    SELECT COUNT(*) INTO duplicate_count
    FROM ticket
    WHERE event_ID = NEW.event_ID
      AND visitor_ID = NEW.visitor_ID;

    IF duplicate_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Visitor already has a ticket for this event.';
    END IF;
END$$

DELIMITER ;

-- Group Triggers --
-- Group Trigger 1 --
-- When a new group member is added, update the member_names field in the group table

DELIMITER $$

CREATE TRIGGER group_member_names
AFTER INSERT ON group_members
FOR EACH ROW
BEGIN
    DECLARE artist_name_var VARCHAR(255);

    -- Get the artist_name from the artist table
    SELECT artist_name INTO artist_name_var
    FROM artist
    WHERE artist_ID = NEW.artist_ID;

    -- Update the member_names field in the group table
    UPDATE `group`
    SET member_names = CONCAT(member_names, artist_name_var, ', ')
    WHERE group_ID = NEW.group_ID;
END$$

DELIMITER ;


-- Review Triggers --
-- Review Trigger 1 --
-- Ensure that a review can only be created if the ticket is activated

DELIMITER $$

CREATE TRIGGER check_ticket_activation
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    DECLARE is_active BOOLEAN;

    SELECT activated_status INTO is_active
    FROM ticket
    WHERE ticket_ID = NEW.ticket_ID;

IF is_active = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot review with inactive ticket.';
    END IF;
END$$

DELIMITER ;


-- Review Trigger 2 --
-- Ensure that the performance belongs to the same event as the ticket and ticket is activated

DELIMITER $$

CREATE TRIGGER check_review_validity
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    DECLARE ticket_event INT;
    DECLARE performance_event INT;
    DECLARE is_activated BOOLEAN;

    -- Πάρε το event στο οποίο ανήκει το εισιτήριο και αν είναι ενεργοποιημένο
    SELECT event_ID, activated_status INTO ticket_event, is_activated
    FROM ticket
    WHERE ticket_ID = NEW.ticket_ID;

    -- Πάρε το event στο οποίο ανήκει το performance
    SELECT event_ID INTO performance_event
    FROM performances
    WHERE performance_ID = NEW.performance_ID;

    -- Έλεγχος 1: Το εισιτήριο πρέπει να είναι ενεργοποιημένο
    IF is_activated = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You cannot review a performance unless your ticket is activated.';
    END IF;

    -- Έλεγχος 2: Το performance πρέπει να ανήκει στο event του εισιτηρίου
    IF ticket_event <> performance_event THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The performance you are trying to review does not belong to the event of your ticket.';
    END IF;

END $$

DELIMITER ;

-- role_of_personel_on_event Triggers --
-- Role Trigger 1 --
-- Ensure that the same personel cannot have multiple roles in the same event
DELIMITER $$

CREATE TRIGGER check_personel_availability
BEFORE INSERT ON role_of_personel_on_event
FOR EACH ROW
BEGIN
    DECLARE overlap_count INT;

    SELECT COUNT(*) INTO overlap_count
    FROM role_of_personel_on_event r
    JOIN events e1 ON r.event_ID = e1.event_ID
    JOIN events e2 ON NEW.event_ID = e2.event_ID
    WHERE r.personel_ID = NEW.personel_ID
      AND (
           (e1.event_start_time <= e2.event_end_time AND e1.event_end_time >= e2.event_start_time)
          );

    IF overlap_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This person is already assigned to an overlapping event.';
    END IF;
END $$

DELIMITER ;






-- == CONSTRAINTS == --
-- Resale Constraints --
-- Resale Constraint 1 --
ALTER TABLE resale_queue
ADD CONSTRAINT chk_seller_or_buyer CHECK (
    (
    ((ticket_ID IS NULL) AND (event_name IS NOT NULL) AND (ticket_type IS NOT NULL))
    OR
    ((ticket_ID IS NOT NULL) AND (event_name IS NULL) AND (ticket_type IS NULL))
     AND (buyer_ID IS NOT NULL)
    )
    OR
    (
    ((ticket_ID IS NOT NULL) AND (event_name IS NOT NULL) AND (ticket_type IS NOT NULL))
    AND (seller_ID IS NOT NULL)
    )
);


-- Resale Constraint 2 --
ALTER TABLE resale_queue
ADD CONSTRAINT chk_one_side_only CHECK (
    (buyer_ID IS NOT NULL AND seller_ID IS NULL)
    OR
    (buyer_ID IS NULL AND seller_ID IS NOT NULL)
);
-- Event Constraints --
-- Ο έλεγχος για  παράλληλα event γίνεται με trigger --



-- == CASCADES == --

-- Cascade 1 role of personel on event --
ALTER TABLE role_of_personel_on_event
  DROP FOREIGN KEY role_of_personel_on_event_ibfk_1,
  DROP FOREIGN KEY role_of_personel_on_event_ibfk_2;
ALTER TABLE role_of_personel_on_event
  ADD CONSTRAINT fk_role_personel
    FOREIGN KEY (personel_ID) REFERENCES personel(personel_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  ADD CONSTRAINT fk_role_event
    FOREIGN KEY (event_ID) REFERENCES events(event_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE;


-- Cascade 2 review table --
ALTER TABLE review
  DROP FOREIGN KEY review_ibfk_1,
  DROP FOREIGN KEY review_ibfk_2;
ALTER TABLE review
  ADD CONSTRAINT fk_ticket_ID
    FOREIGN KEY (ticket_ID) REFERENCES ticket(ticket_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  ADD CONSTRAINT fk_performance_ID
    FOREIGN KEY (performance_ID) REFERENCES performances(performance_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE;    

-- Cascade 3 group_members table --
ALTER TABLE group_members
  DROP FOREIGN KEY group_members_ibfk_1,
  DROP FOREIGN KEY group_members_ibfk_2;
ALTER TABLE group_members
  ADD CONSTRAINT fk_artist_ID
    FOREIGN KEY (artist_ID) REFERENCES artist(artist_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  ADD CONSTRAINT fk_group_ID
    FOREIGN KEY (group_ID) REFERENCES `group`(group_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE;
 

-- == EVENTS == --
--  Delete the matched resale entry from the resale_queue after some time
CREATE EVENT delete_matched_resale_entries
ON SCHEDULE EVERY 1 HOUR
DO
  DELETE FROM resale_queue
  WHERE ticket_ID IN (SELECT ticket_ID FROM temp_resale_matches)
    AND (
      (buyer_ID IS NOT NULL AND seller_ID IS NULL) OR
      (buyer_ID IS NULL AND seller_ID IS NOT NULL)
    );