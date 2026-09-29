SELECT
    f.FlightNumber AS [Flight Number],
    COUNT(t.TicketID) AS [Tickets Sold],
    SUM(t.Price) AS [Total Revenue]
FROM Flights f
INNER JOIN Bookings b
    ON f.FlightID = b.FlightID
INNER JOIN Tickets t
    ON b.BookingID = t.BookingID
GROUP BY
    f.FlightNumber
ORDER BY
    [Total Revenue] DESC;
GO