USE airport_management_system;

DELIMITER $$

CREATE FUNCTION no_of_employee(nam6 VARCHAR(100)) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE a INT;
    SELECT COUNT(*) INTO a FROM EMPLOYEE WHERE AIRPORT_NAME = nam6;
    RETURN a;
END$$

DELIMITER ;

SELECT no_of_employee('Shivaji') AS employee_count;
