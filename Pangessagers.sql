SELECT
    PassengerID AS [Passenger ID],
    FirstName AS [First Name],
    LastName AS [Last Name],
    IDNumber AS [ID Number],
    Email AS [Email Address],
    PhoneNumber AS [Phone Number]
FROM Passengers
ORDER BY LastName ASC, FirstName ASC;