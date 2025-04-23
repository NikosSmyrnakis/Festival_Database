-- Festival
-- Stores basic information about each festival
CREATE TABLE festival (
    festival_ID INT PRIMARY KEY AUTO_INCREMENT,
    starting_date DATE NOT NULL,
    duration INT NOT NULL
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
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    event_building INT,
    FOREIGN KEY (event_building) REFERENCES building(building_ID),
    FOREIGN KEY (festival_ID) REFERENCES festival(festival_ID)
);

-- Performances
-- Each performance belongs to an event and has a type and duration
CREATE TABLE performances (
    performance_ID INT PRIMARY KEY AUTO_INCREMENT,
    event_ID INT,
    performance_time TIME NOT NULL,
    building_name VARCHAR(255) NOT NULL,
    performance_duration INT NOT NULL,
    performance_type ENUM('warm up', 'headline', 'special_guest', 'finale') NOT NULL,
    FOREIGN KEY (event_ID) REFERENCES events(event_ID)
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
    listed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ticket_ID) REFERENCES ticket(ticket_ID)
);

-- Buyer
-- Represents users interested in buying tickets
CREATE TABLE buyer (
    buyer_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);


-- Seller
-- Represents users who are selling or listing tickets for resale
CREATE TABLE seller (
    seller_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
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
