SELECT
    f.FlightNumber AS [Flight Number],
    a.AirportCode AS [Airport],
    a.City AS [Airport City],
    f.DepartureDateTime AS [Departure Time],
    f.Capacity AS [Flight Capacity],
    COUNT(b.BookingID) AS [Passengers Booked]
FROM Flights f
LEFT JOIN Airports a
    ON f.AirportID = a.AirportID
LEFT JOIN Bookings b
    ON f.FlightID = b.FlightID
GROUP BY
    f.FlightNumber,
    a.AirportCode,
    a.City,
    f.DepartureDateTime,
    f.Capacity
ORDER BY f.DepartureDateTime ASC;
GO