--- === TABLES CREATION === ---

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
    max_capacity INT NOT NULL,
    technical_equipment VARCHAR(25500) NOT NULL
);

-- Artist
-- Stores artist profiles and metadata
CREATE TABLE artist (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(255) NOT NULL,
    stage_name VARCHAR(255),  -- can be NULL
    date_of_birth DATE NOT NULL,
    music_genre VARCHAR(100) NOT NULL,
    website VARCHAR(255),     -- can be NULL
    instagram VARCHAR(255),   -- can be NULL
    group_name VARCHAR(255) NOT NULL,
    date_of_debut DATE NOT NULL
);


-- Events
-- Represents a specific event held as part of a festival
CREATE TABLE events (
    event_ID INT PRIMARY KEY AUTO_INCREMENT,
    festival_ID INT,
    event_name VARCHAR(255) NOT NULL,
    festival_day INT NOT NULL,
    event_start_time TIME NOT NULL,
    event_end_time TIME NOT NULL,
    building_ID INT,
    event_duration INT GENERATED ALWAYS AS (TIMESTAMPDIFF(MINUTE, event_start_time, event_end_time)) STORED,
    FOREIGN KEY (building_ID) REFERENCES building(building_ID),
    FOREIGN KEY (festival_ID) REFERENCES festival(festival_ID) -- ,
    -- CHECK (event_start_time < event_end_time)
);

-- Performances
-- Each performance belongs to an event and has a type and duration
CREATE TABLE performances (
    performance_ID INT PRIMARY KEY AUTO_INCREMENT,
    event_ID INT,
    performance_type ENUM('warm up', 'headline', 'special_guest', 'finale') NOT NULL,
    performance_start_time TIME NOT NULL,
    performance_end_time TIME NOT NULL,
    performance_duration INT GENERATED ALWAYS AS (TIMESTAMPDIFF(MINUTE, performance_start_time, performance_end_time)) STORED,
    building_ID INT NOT NULL,
    building_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (event_ID) REFERENCES events(event_ID),
    FOREIGN KEY (building_ID) REFERENCES building(building_ID),
    CHECK (performance_start_time < performance_end_time),
    CHECK (performance_duration <= 180) -- max duration of a performance is 3 hours
);

-- Personel-Event Relationship (many-to-many)
-- This table defines the role of each personel in each event
CREATE TABLE role_of_personel_on_event (
    personel_ID INT,
    event_ID INT,
    role ENUM('techincal','security','support') NOT NULL,
    PRIMARY KEY (personel_ID, event_ID),
    FOREIGN KEY (personel_ID) REFERENCES personel(personel_ID),
    FOREIGN KEY (event_ID) REFERENCES events(event_ID)
);

-- Artist-Performance Relationship (many-to-many)
-- Connects artists to their performances
CREATE TABLE artist_performances (
    artist_id INT,
    performance_ID INT,
    PRIMARY KEY (artist_id, performance_ID),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (performance_ID) REFERENCES performances(performance_ID)
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

    FOREIGN KEY (visitor_ID) REFERENCES visitor(visitor_ID),
    FOREIGN KEY (event_ID) REFERENCES events(event_ID),

    ticket_type ENUM('general_admission', 'VIP', 'backstage') NOT NULL,
    purchase_date DATE,
    purchase_price DECIMAL(10, 2),
    payment_method ENUM('debit_card', 'credit_card', 'I-BAN'),
    activated_status BOOLEAN DEFAULT FALSE
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
    listed_at TIMESTAMP,
    FOREIGN KEY (ticket_ID) REFERENCES ticket(ticket_ID)
);

-- Buyer
-- Represents users interested in buying tickets
CREATE TABLE buyer (
    buyer_ID INT AUTO_INCREMENT PRIMARY KEY,
    visitor_ID INT,
    pending_orders_buyer INT DEFAULT 0,         -- number of pending orders
    FOREIGN KEY (visitor_ID) REFERENCES visitor(visitor_ID)
);


-- Seller
-- Represents users who are selling or listing tickets for resale
CREATE TABLE seller (
    seller_ID INT AUTO_INCREMENT PRIMARY KEY,
    visitor_ID INT,
    pending_orders_seller INT DEFAULT 0,         -- number of pending orders
    FOREIGN KEY (visitor_ID) REFERENCES visitor(visitor_ID)
);

-- Review
-- Feedback for events by visitors who have activated tickets
-- (Use a trigger to ensure review is only allowed if ticket is activated)
CREATE TABLE review (
    review_ID INT AUTO_INCREMENT PRIMARY KEY,
    ticket_ID INT,
    artist_performance ENUM('1', '2', '3', '4', '5'),
    sound_and_lighting ENUM('1', '2', '3', '4', '5'),
    stage_presence ENUM('1', '2', '3', '4', '5'),
    event_organization ENUM('1', '2', '3', '4', '5'),
    overall_impression ENUM('1', '2', '3', '4', '5'),
    FOREIGN KEY (ticket_ID) REFERENCES ticket(ticket_ID)
    -- NOTE: use trigger to ensure review only if activated_status = TRUE
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


--- === TRIGGERS === ---
--- Visitor Triggers --- 

--- Visitor Trigger 1 --- 
-- When a new visitor is created, create a corresponding buyer entry
-- with the same visitor_ID and default pending_orders_buyer = 0
-- This is to ensure that every visitor can be a buyer or seller
-- without needing to create a new entry in the buyer table

DELIMITER $$
CREATE TRIGGER create_buyer_after_visitor
AFTER INSERT ON visitor
FOR EACH ROW
BEGIN
    INSERT INTO buyer (visitor_ID, pending_orders_buyer)
    VALUES (NEW.visitor_ID, 0);
END$$
DELIMITER ;

--- Visitor Trigger 2 ---
-- When a new visitor is created, create a corresponding seller entry
-- with the same visitor_ID and default pending_orders_seller = 0
-- This is to ensure that every visitor can be a buyer or seller
-- without needing to create a new entry in the seller table

DELIMITER $$
CREATE TRIGGER create_seller_after_visitor
AFTER INSERT ON visitor
FOR EACH ROW
BEGIN
    INSERT INTO seller (visitor_ID)
    VALUES (NEW.visitor_ID);
END$$
DELIMITER ;

DELIMITER $$

--- Resale Triggers ---
--- Resale Trigger 1 ---
-- When a ticket is activated, check if it can be matched with a buyer/seller
-- If a match is found, insert into temp_resale_matches and delete from resale_queue

CREATE TRIGGER match_resale_after_insert
BEFORE INSERT ON resale_queue
FOR EACH ROW
BEGIN
    DECLARE matched_seller INT;
    DECLARE matched_buyer INT;
    -- If new row is a buyer
    IF NEW.buyer_ID IS NOT NULL THEN
        -- Match με διαθέσιμο seller για ίδιο ticket_ID
        SELECT seller_ID INTO matched_seller
        FROM resale_queue
        WHERE ticket_ID = NEW.ticket_ID
          AND seller_ID IS NOT NULL
          AND buyer_ID IS NULL
        LIMIT 1;

        IF matched_seller IS NOT NULL THEN
            -- Εισαγωγή στο temp_resale_matches
            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (NEW.buyer_ID, matched_seller, NEW.ticket_ID);
            -- Διαγραφή των matched εγγραφών από resale_queue
            SET NEW.resale_ID = NULL;
        END IF;
    END IF;
    -- If new row is a seller
    IF NEW.seller_ID IS NOT NULL THEN
        -- Match με διαθέσιμο buyer για ίδιο ticket_ID
        SELECT buyer_ID INTO matched_buyer
        FROM resale_queue
        WHERE ticket_ID = NEW.ticket_ID
          AND buyer_ID IS NOT NULL
          AND seller_ID IS NULL
        LIMIT 1;

        IF matched_buyer IS NOT NULL THEN
            -- Εισαγωγή στο temp_resale_matches
            INSERT INTO temp_resale_matches (buyer_ID, seller_ID, ticket_ID)
            VALUES (matched_buyer, NEW.seller_ID, NEW.ticket_ID);
            -- Διαγραφή των matched εγγραφών από resale_queue
            SET NEW.resale_ID = NULL;
        END IF;
    END IF;
END$$
DELIMITER ;

--- Event Triggers ---
--- Event Trigger 1 ---
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

---Performance Triggers---<<<<<<<<<<
--- Performance Trigger 1 ---
-- Check for overlapping events in the same building on the same day

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
        AND event_ID = NEW.event_ID
        AND (
            (NEW.performance_start_time BETWEEN performance_start_time - INTERVAL 1 SECOND AND performance_end_time + INTERVAL 1 SECOND)
            OR
            (NEW.performance_end_time BETWEEN performance_start_time - INTERVAL 1 SECOND AND performance_end_time + INTERVAL 1 SECOND)
        );

    IF conflict_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Conflict with another performance in the same building, same day, time range +/-5 minutes';
    END IF;
END$$

DELIMITER ;

--- Ticket Triggers ---
--- Ticket Trigger 1 ---
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

--- Review Triggers ---
--- Review Trigger 1 ---
-- Ensure that a review can only be created if the ticket is activated
-- This is done using a trigger before inserting a new review
DELIMITER $$

CREATE TRIGGER check_ticket_activation
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    DECLARE is_active BOOLEAN;

    SELECT activated_status INTO is_active
    FROM ticket
    WHERE ticket_ID = NEW.ticket_ID;

    IF is_active IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ticket does not exist.';
    ELSEIF is_active = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot review with inactive ticket.';
    END IF;
END$$

DELIMITER ;





--- === CONSTRAINTS === ---
--- Resale Constraints ---
--- Resale Constraint 1 ---
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


--- Resale Constraint 2 ---
ALTER TABLE resale_queue
ADD CONSTRAINT chk_one_side_only CHECK (
    (buyer_ID IS NOT NULL AND seller_ID IS NULL)
    OR
    (buyer_ID IS NULL AND seller_ID IS NOT NULL)
);
--- Event Constraints ---
--- Ο έλεγχος για  παράλληλα event γίνεται με trigger ---



