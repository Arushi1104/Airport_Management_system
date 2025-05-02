USE airport_management_system;
-- Inserting data into AIRPORT
INSERT INTO AIRPORT (AIRPORT_NAME, CITY, STATE) VALUES
('Shivaji', 'Mumbai', 'Maharashtra'),
('Indra Gandhi Int', 'Delhi', 'Maharashtra');

-- Inserting data into EMPLOYEE
INSERT INTO EMPLOYEE (E_ID, NAME, ADDRESS, SEX, SALARY, AGE, AIRPORT_NAME) VALUES
(13, 'parth', 'mumbai', 'M', 40000, 19, 'Shivaji'),
(14, 'ramesh', 'mumbai', 'M', 30000, 20, 'Shivaji'),
(15, 'ram', 'delhi', 'M', 20000, 23, 'Indra Gandhi Int'),
(16, 'rani', 'delhi', 'F', 22000, 19, 'Indra Gandhi Int');

-- Inserting data into EMP_PHONE_NO
INSERT INTO EMP_PHONE_NO (E_ID, PHONE_NO) VALUES
(13, '1111111111'),
(14, '3333333333'),
(16, '6666666666');

-- Inserting data into AIRLINE
INSERT INTO AIRLINE (AIRLINE_ID, AIRLINE_NAME, AIRPORT_NAME) VALUES
(123, 'MLines', 'Shivaji'),
(124, 'Dlines', 'Indra Gandhi Int');

-- Inserting data into FLIGHT
INSERT INTO FLIGHT (FLIGHT_NO, SOURCE, DESTINATION, D_TIME, A_TIME, DURATION, AIRLINE_ID) VALUES
(12345, 'Mumbai', 'Delhi', STR_TO_DATE('20-FEB-2022 4:00 AM', '%d-%b-%Y %h:%i %p'), STR_TO_DATE('20-FEB-2022 8:30 AM', '%d-%b-%Y %h:%i %p'), 360, 123),
(12356, 'Delhi', 'Mumbai', STR_TO_DATE('20-02-2022 10:00 PM', '%d-%m-%Y %h:%i %p'), STR_TO_DATE('21-02-2022 4:00 AM', '%d-%m-%Y %h:%i %p'), 180, 123),
(12389, 'Delhi', 'Mumbai', STR_TO_DATE('24-02-2022 9:15 AM', '%d-%m-%Y %h:%i %p'), STR_TO_DATE('25-02-2022 9:30 AM', '%d-%m-%Y %h:%i %p'), 150, 123);

-- Inserting data into PASSENGER
INSERT INTO PASSENGER (PASSPORT_NO, NAME, ADDRESS, SEX, DOB, AGE, FLIGHT_NO, TICKET_NO) VALUES
('123', 'Parth', 'A22', 'Male', '2002-03-28', 5, 12356, '786'),
('456', 'Tushar', 'B22', 'Male', '2001-08-12', 19, 12345, '777'),
('789', 'Raj', 'D45', 'Male', '1972-06-13', 64, 12345, '786');

-- Inserting data into PASSENGER_PHONE_NO
INSERT INTO PASSENGER_PHONE_NO (PASSPORT_NO, PHONE_NO) VALUES
('123', '1111'),
('456', '3333333333'),
('789', '6666666666');

-- Inserting data into TICKET
INSERT INTO TICKET (TICKET_NO, AIRLINE_NAME, PRICE, SEAT_NO, CLASS, D_TIME, A_TIME, DURATION, DESTINATION, SOURCE, PASSPORT_NO, PASSENGER_NAME) VALUES
('786', 'SpiceJet', 6000, 'A-2', 'First', STR_TO_DATE('20-FEB-2022 4:00 AM', '%d-%b-%Y %h:%i %p'), STR_TO_DATE('20-FEB-2022 8:30 AM', '%d-%b-%Y %h:%i %p'), 5, 'banglore', 'delhi', '123', 'Parth'),
('777', 'Mumbai Airlines', 4000, 'H-42', 'Secon', STR_TO_DATE('24-02-2022 9:15 AM', '%d-%m-%Y %h:%i %p'), STR_TO_DATE('25-02-2022 9:30 AM', '%d-%m-%Y %h:%i %p'), 4, 'goa', 'chandigarh', '456', 'Tushar');


