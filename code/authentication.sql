-- 1. Admin User
DROP USER IF EXISTS 'admin'@'%';
CREATE USER 'admin'@'%' IDENTIFIED BY 'admin_pass';
GRANT ALL PRIVILEGES ON db1.* TO 'admin'@'%';

-- 2. Manager User
DROP USER IF EXISTS 'manager'@'%';
CREATE USER 'manager'@'%' IDENTIFIED BY 'manager_pass';
GRANT SELECT, INSERT, UPDATE, DELETE
  ON db1.events TO 'manager'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE
  ON db1.performances TO 'manager'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE
  ON db1.ticket TO 'manager'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE
  ON db1.review TO 'manager'@'%';

-- 3. Personnel Operations User
DROP USER IF EXISTS 'personel_ops'@'%';
CREATE USER 'personel_ops'@'%' IDENTIFIED BY 'personel_pass';
GRANT SELECT, INSERT, UPDATE, DELETE
  ON db1.personel TO 'personel_ops'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE
  ON db1.role_of_personel_on_event TO 'personel_ops'@'%';

-- 4. Visitor Portal User
DROP USER IF EXISTS 'visitor_portal'@'%';
CREATE USER 'visitor_portal'@'%' IDENTIFIED BY 'visitor_pass';
GRANT SELECT, INSERT
  ON db1.visitor TO 'visitor_portal'@'%';
GRANT SELECT, INSERT
  ON db1.ticket TO 'visitor_portal'@'%';
GRANT INSERT
  ON db1.review TO 'visitor_portal'@'%';

-- 5. Resale Bot User
DROP USER IF EXISTS 'resale_bot'@'%';
CREATE USER 'resale_bot'@'%' IDENTIFIED BY 'resale_pass';
GRANT SELECT, INSERT, DELETE, UPDATE
  ON db1.resale_queue TO 'resale_bot'@'%';
GRANT SELECT, INSERT
  ON db1.temp_resale_matches TO 'resale_bot'@'%';

-- 6. Analytics User
DROP USER IF EXISTS 'analytics'@'%';
CREATE USER 'analytics'@'%' IDENTIFIED BY 'analytics_pass';
GRANT SELECT ON db1.* TO 'analytics'@'%';

-- Εφαρμογή αλλαγών
FLUSH PRIVILEGES;
