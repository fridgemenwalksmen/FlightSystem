SELECT
    pay.PaymentID AS [Payment ID],
    b.BookingReference AS [Booking Reference],
    p.FirstName + ' ' + p.LastName AS [Passenger Name],
    pay.PaymentDate AS [Payment Date],
    pay.Amount AS [Payment Amount],
    pay.PaymentMethod AS [Payment Method],
    pay.PaymentStatus AS [Payment Status]
FROM Payments pay
INNER JOIN Bookings b
    ON pay.BookingID = b.BookingID
INNER JOIN Passengers p
    ON b.PassengerID = p.PassengerID
ORDER BY pay.PaymentDate DESC;
GO