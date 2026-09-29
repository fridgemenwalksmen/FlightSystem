SELECT
    COUNT(DISTINCT b.BookingID) AS [Total Bookings],
    COUNT(DISTINCT b.PassengerID) AS [Passengers With Bookings],
    COUNT(DISTINCT t.TicketID) AS [Tickets Issued],
    SUM(t.Price) AS [Total Ticket Revenue],
    SUM(pay.Amount) AS [Total Payments]
FROM Bookings b
LEFT JOIN Tickets t
    ON b.BookingID = t.BookingID
LEFT JOIN Payments pay
    ON b.BookingID = pay.BookingID;
GO