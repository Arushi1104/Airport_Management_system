USE airport_management_system;

-- Step 1: Create the table
CREATE TABLE AAIRPORT (
    AIRPORT_NAME VARCHAR(20) NOT NULL PRIMARY KEY,
    CITY VARCHAR(20),
    STATE VARCHAR(20)
);

-- Step 2: Insert some sample data
INSERT INTO AAIRPORT VALUES ('mumbai', 'mumbai', 'maharashtra');
INSERT INTO AAIRPORT VALUES ('delhi', 'delhi', 'delhi');
INSERT INTO AAIRPORT VALUES ('pune', 'pune', 'maharashtra');

-- Step 3: View table contents
SELECT * FROM AAIRPORT;

-- Step 4: Create BEFORE INSERT trigger to trim values
DELIMITER $$

CREATE TRIGGER BEFORE_INSERT_AAIRPORT
BEFORE INSERT ON AAIRPORT
FOR EACH ROW
BEGIN
    SET NEW.AIRPORT_NAME = TRIM(NEW.AIRPORT_NAME);
    SET NEW.CITY = TRIM(NEW.CITY);
    SET NEW.STATE = TRIM(NEW.STATE);
END$$

DELIMITER ;

-- Step 5: Insert data with extra spaces to test the trigger
INSERT INTO AAIRPORT VALUES ('B ', ' B', 'B ');

-- Step 6: View table contents again to verify trimming worked
SELECT * FROM AAIRPORT;

-- Step 7: Drop the trigger if needed
DROP TRIGGER BEFORE_INSERT_AAIRPORT;
