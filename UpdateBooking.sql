UPDATE Bookings
SET BookingStatus = 'Cancelled'
WHERE BookingID = 1;
SELECT
    BookingID AS [Booking ID],
    BookingReference AS [Booking Reference],
    PassengerID AS [Passenger ID],
    FlightID AS [Flight ID],
    BookingStatus AS [Booking Status]
FROM Bookings
WHERE BookingID = 1;
