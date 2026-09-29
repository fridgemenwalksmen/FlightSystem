USE [Flight System];
GO

SELECT
    p.PassengerID AS [Passenger ID],
    p.FirstName + ' ' + p.LastName AS [Passenger Name],
    b.BookingReference AS [Booking Reference],
    f.FlightNumber AS [Flight Number],
    b.BookingDate AS [Booking Date],
    b.BookingStatus AS [Booking Status]
FROM Passengers p
INNER JOIN Bookings b
    ON p.PassengerID = b.PassengerID
INNER JOIN Flights f
    ON b.FlightID = f.FlightID
ORDER BY p.LastName ASC;
GO