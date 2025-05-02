USE airport_management_system;

-- Drop existing procedures if they exist
DROP PROCEDURE IF EXISTS add_airport;
DROP PROCEDURE IF EXISTS add_airline;

-- Create Procedure to Add a New Airport
DELIMITER $$

CREATE PROCEDURE add_airport(
    IN n VARCHAR(100),
    IN c VARCHAR(100),
    IN s VARCHAR(100)
)
BEGIN
    INSERT INTO AIRPORT (AIRPORT_NAME, CITY, STATE)
    VALUES (n, c, s);
END$$

-- Create Procedure to Add a New Airline
CREATE PROCEDURE add_airline(
    IN id INT,
    IN name VARCHAR(100),
    IN airport VARCHAR(100)
)
BEGIN
    INSERT INTO AIRLINE (AIRLINE_ID, AIRLINE_NAME, AIRPORT_NAME)
    VALUES (id, name, airport);
END$$

DELIMITER ;

-- Call the procedure to insert into AIRPORT
CALL add_airport('Dabolim Airport', 'Dabolim', 'Goa');

-- Call the procedure to insert into AIRLINE
CALL add_airline(130, 'Indigo', 'Dabolim Airport');

-- Check the results
SELECT * FROM AIRPORT;
SELECT * FROM AIRLINE;
