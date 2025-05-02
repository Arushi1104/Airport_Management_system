USE airport_management_system;

-- 1. Employee details for those working at airports in Delhi
SELECT E.E_ID, P.PHONE_NO, A.AIRPORT_NAME
FROM EMPLOYEE E
JOIN EMP_PHONE_NO P ON E.E_ID = P.E_ID
JOIN AIRPORT A ON E.AIRPORT_NAME = A.AIRPORT_NAME
WHERE A.CITY = 'Delhi';

-- 2. Children (age ≤ 10) and senior citizens (age ≥ 60) traveling from Delhi
SELECT P.PASSPORT_NO, P.NAME, P.AGE, P.FLIGHT_NO, T.TICKET_NO
FROM PASSENGER P
JOIN TICKET T ON P.PASSPORT_NO = T.PASSPORT_NO
WHERE T.SOURCE = 'Delhi' AND (P.AGE <= 10 OR P.AGE >= 60);

-- 3. Senior citizens (age ≥ 60) traveling to Delhi via SpiceJet
SELECT P.PASSPORT_NO, P.NAME, P.AGE, P.FLIGHT_NO, T.TICKET_NO, T.SEAT_NO
FROM PASSENGER P
JOIN TICKET T ON P.PASSPORT_NO = T.PASSPORT_NO
WHERE T.DESTINATION = 'Delhi'
  AND P.AGE >= 60
  AND T.AIRLINE_NAME = 'SpiceJet';
