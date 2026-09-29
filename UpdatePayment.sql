UPDATE Payments
SET PaymentStatus = 'Refunded'
WHERE PaymentID = 1;
SELECT
    PaymentID AS [Payment ID],
    BookingID AS [Booking ID],
    Amount AS [Amount],
    PaymentMethod AS [Payment Method],
    PaymentStatus AS [Payment Status]
FROM Payments
WHERE PaymentID = 1;
