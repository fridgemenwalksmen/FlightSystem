SELECT
    f.FlightNumber AS [Flight Number],
    a.AirportName AS [Airport],
    a.City AS [City],
    f.DepartureDateTime AS [Departure Time],
    f.ArrivalDateTime AS [Arrival Time],
    f.Capacity AS [Capacity]
FROM Flights f
INNER JOIN Airports a
    ON f.AirportID = a.AirportID
WHERE a.City = 'Cape Town'
ORDER BY f.ArrivalDateTime ASC;
GO