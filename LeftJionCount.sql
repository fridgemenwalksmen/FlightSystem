SELECT
    f.FlightNumber AS [Flight Number],
    a.City AS [Airport City],
    COUNT(t.TicketID) AS [Tickets Issued]
FROM Flights f
LEFT JOIN Airports a
    ON f.AirportID = a.AirportID
LEFT JOIN Bookings b
    ON f.FlightID = b.FlightID
LEFT JOIN Tickets t
    ON b.BookingID = t.BookingID
GROUP BY
    f.FlightNumber,
    a.City
ORDER BY
    [Tickets Issued] DESC,
    f.FlightNumber ASC;
GO