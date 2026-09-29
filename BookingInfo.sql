SELECT
    b.BookingID AS [Booking ID],
    b.BookingReference AS [Booking Reference],
    p.FirstName + ' ' + p.LastName AS [Passenger Name],
    f.FlightNumber AS [Flight Number],
    b.BookingDate AS [Booking Date],
    b.BookingStatus AS [Booking Status]
FROM Bookings b
INNER JOIN Passengers p
    ON b.PassengerID = p.PassengerID
INNER JOIN Flights f
    ON b.FlightID = f.FlightID
ORDER BY b.BookingDate DESC;
GO