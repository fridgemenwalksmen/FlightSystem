UPDATE Passengers
SET Email = 'janco.burger@flysaa.com'
WHERE PassengerID = 1;
SELECT
    PassengerID AS [Passenger ID],
    FirstName AS [First Name],
    LastName AS [Last Name],
    Email AS [Email Address]
FROM Passengers
WHERE PassengerID = 1;