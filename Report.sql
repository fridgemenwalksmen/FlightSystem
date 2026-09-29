SELECT
    f.FlightNumber AS [Flight Number],
    a.AirportCode AS [Airport],
    COUNT(DISTINCT b.BookingID) AS [Total Bookings],
    COUNT(DISTINCT t.TicketID) AS [Tickets Issued],
    SUM(t.Price) AS [Revenue]
FROM Flights f
LEFT JOIN Airports a
    ON f.AirportID = a.AirportID
LEFT JOIN Bookings b
    ON f.FlightID = b.FlightID
LEFT JOIN Tickets t
    ON b.BookingID = t.BookingID
GROUP BY
    f.FlightNumber,
    a.AirportCode
ORDER BY
    Revenue DESC;
--made a commit